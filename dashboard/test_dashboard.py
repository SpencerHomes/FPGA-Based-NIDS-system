"""Run locally with: python -m unittest -v"""
import unittest
from serial_listener import BAUD_RATE, NIDSReceiver, normalize_alert, parse_json_objects


class ParserTests(unittest.TestCase):
    def test_baud_rate_is_fixed(self):
        self.assertEqual(BAUD_RATE, 19200)
        receiver = NIDSReceiver()
        try:
            self.assertEqual(receiver.get_status()["baud"], 19200)
            with self.assertRaises(TypeError):
                receiver.configure(mode="HARDWARE", port="COM3", baud=115200)
            receiver.configure(mode="SIMULATION")
            self.assertEqual(receiver.get_status()["baud"], 19200)
        finally:
            receiver.shutdown()

    def test_project_style_jsonl(self):
        obj = parse_json_objects('{"type":"SYN_FLOOD","src":"192.168.1.2","dst_port":80}')
        self.assertEqual(len(obj), 1)
        event = normalize_alert(obj[0], 1, "HARDWARE")
        self.assertEqual(event["type"], "SYN_FLOOD")
        self.assertEqual(event["severity"], "CRITICAL")
        self.assertEqual(event["src_ip"], "192.168.1.2")
        self.assertEqual(event["dst_port"], 80)

    def test_aliases_and_unknown_type_preserved(self):
        obj = parse_json_objects('RX: {"alert_type":"custom_rule_x","source_ip":"10.0.0.1","destination_port":443}')[0]
        event = normalize_alert(obj, 2, "HARDWARE")
        self.assertEqual(event["type"], "CUSTOM_RULE_X")
        self.assertEqual(event["severity"], "UNCLASSIFIED")
        self.assertEqual(event["src_ip"], "10.0.0.1")
        self.assertEqual(event["dst_port"], 443)

    def test_nested_payload_and_explicit_severity(self):
        obj = parse_json_objects('{"alert":{"type":"PORT_SCAN","severity":"HIGH","src_ip":"1.2.3.4"}}')[0]
        event = normalize_alert(obj, 3, "HARDWARE")
        self.assertEqual(event["severity"], "HIGH")
        self.assertEqual(event["src_ip"], "1.2.3.4")

    def test_invalid_line_not_parsed(self):
        self.assertEqual(parse_json_objects("not json at all"), [])

    def test_missing_network_fields_remain_missing(self):
        event = normalize_alert({"type": "CUSTOM"}, 1, "HARDWARE")
        self.assertIsNone(event["src_ip"])
        self.assertIsNone(event["dst_ip"])
        self.assertIsNone(event["dst_port"])

    def test_board_heartbeat_signature_is_info_not_unclassified(self):
        payload = {"v": 1, "t": 2, "id": 162, "up": 324000, "st": "ALIVE", "crc": "2982"}
        event = normalize_alert(payload, 131, "HARDWARE")
        self.assertEqual(event["type"], "HEARTBEAT")
        self.assertEqual(event["display_type"], "Board Heartbeat")
        self.assertEqual(event["severity"], "INFO")
        self.assertTrue(event["is_heartbeat"])
        self.assertEqual(event["device_status"], "ALIVE")
        self.assertEqual(event["device_message_id"], 162)
        self.assertEqual(event["device_uptime"], 324000)
        self.assertEqual(event["crc"], "2982")

    def test_heartbeat_marks_board_online(self):
        receiver = NIDSReceiver()
        try:
            payload = '{"v":1,"t":2,"id":162,"up":324000,"st":"ALIVE","crc":"2982"}'
            self.assertEqual(receiver.ingest_line(payload), 1)
            state = receiver.get_state()
            self.assertTrue(state["status"]["board_online"])
            self.assertEqual(state["status"]["board_state"], "ONLINE")
            self.assertEqual(state["summary"]["info"], 1)
            self.assertEqual(state["summary"]["unclassified"], 0)
        finally:
            receiver.shutdown()

    def test_clear_events_preserves_receiver_and_heartbeat_health(self):
        receiver = NIDSReceiver()
        try:
            receiver.ingest_line('{"v":1,"t":2,"id":162,"up":324000,"st":"ALIVE","crc":"2982"}')
            self.assertEqual(receiver.clear_events(), 1)
            state = receiver.get_state()
            self.assertEqual(state["summary"]["total"], 0)
            self.assertTrue(state["status"]["board_online"])
        finally:
            receiver.shutdown()

    def test_receiver_ingest(self):
        receiver = NIDSReceiver()
        try:
            receiver.configure(mode="SIMULATION")
            count = receiver.ingest_line('{"type":"PORT_SCAN","src":"10.0.0.2","dst_port":22}')
            self.assertEqual(count, 1)
            state = receiver.get_state()
            self.assertGreaterEqual(state["summary"]["total"], 1)
            self.assertEqual(state["events"][0]["type"], "PORT_SCAN")
            self.assertEqual(state["status"]["baud"], 19200)
        finally:
            receiver.shutdown()


if __name__ == "__main__":
    unittest.main()

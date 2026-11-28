## FPGA Based Network Intrusion Detection System
We have built this project to monitor network traffic in our everyday life and identify suspicious activity in real time. An FPGA has been used for the task of monitoring because conventional software-based Intrusion Detection System (IDS) rely on general purpose CPU, where packet parsing and attack detection fight for CPU with other tasks.On the other hand , an FPGA is very fast anad dedicated for this specific job so efficiency and error handling is going to be reliable by a considerable margin. The project uses Verilog RTL to implement a hardware-oriented attack detection engine that analyzes packet metadata, maintains traffic statistics using a Count-Min Sketch and Bloom Filter, and generates alerts for potential network attacks. The intended platform is a Xilinx Spartan-6 FPGA with LAN8720 Ethernet PHY interfaces, while an Raspberry Pi Zero 2 W(optional) is planned for alert monitoring.

## How to try it?

### Implementation with an FPGA can be done in the following way:
1. Ethernet PHY Setup: Connect two LAN8720 Ethernet PHY modules to the FPGA. One PHY acts as the network input, while the other acts as the network output.

2. RMII Interface Configuration: Configure the FPGA's RMII interfaces to communicate with both LAN8720 modules. Establish the required 50 MHz reference clock, reset and data signals.

3. Ethernet Frame Reception: Implement the receive logic in Verilog to reconstruct Ethernet frames from the incoming 2-bit RMII data stream.

4. Packet Parser Integration: Connect the Ethernet receiver to the packet parser, which extracts IPv4 addresses, transport protocols, port numbers and TCP flags.

5. Attack Detector Integration: Connect the parser's metadata output to the FPGA attack detection engine. Use a valid/ready handshake to transfer packet metadata reliably.

6. Packet Forwarding: Implement Ethernet transmit logic to forward received frames through the second LAN8720 PHY, maintaining the inline network connection.

7. Alert Communication: Connect the FPGA's alert output to a Raspberry Pi Zero 2 W through a suitable communication interface, such as UART.

8. Monitoring Dashboard: Configure the Raspberry Pi to receive alert records and display detected attacks, traffic statistics and other monitoring information.

9. FPGA Synthesis and Deployment: Apply the required pin constraints, synthesize the Verilog design using Xilinx ISE 14.7, verify timing and program the Spartan-6 FPGA.

10. System Testing: Connect the NIDS between two network devices and test packet forwarding, detection functionality and alert generation using normal and simulated attack traffic.

**Note:** You can also simulate this project on your device without an FPGA, step to that is given below:

### 1. Pre-requisites

- [Icarus Verilog](https://steveicarus.github.io/iverilog/) – Verilog simulation.
- [Python 3](https://www.python.org/) – PCAP conversion and helper scripts.
- [Wireshark](https://www.wireshark.org/) – Optional, for capturing and inspecting network traffic.

### 2. Run the detector testbench

**1.Compile the detector and its testbench:**
```bash
iverilog -g2001 -o detector_test \
nids_attack_detector_v2.v \
nids_attack_detector_v2_tb.v
```
**2.Run the simulation:**
```bash
vvp detector_test
```
The testbench runs 49 directed checks covering the detector's key behaviours.

**3. Replay a packet capture**

Convert a PCAP or PCAPNG capture into the metadata format used by the replay testbench:
```bash
python3 pcap_to_meta.py capture.pcap \
-o trace.txt --speedup 100
```
Compile the replay testbench:
```bash
iverilog -g2001 -s nids_replay_tb \
-Pnids_replay_tb.WINDOW_CYCLES=500000 \
-o replay \
nids_attack_detector_v2.v nids_replay_tb.v
```
**4.Run the replay:**
```bash
vvp replay +TRACE=trace.txt
```
The replay testbench feeds extracted packet metadata into the detector and reports generated alerts and traffic statistics.

WINDOW_CYCLES should be calculated as:
```bash
WINDOW_CYCLES = 50,000,000 / speedup
```
Use a reasonable speedup for busy captures because the detector needs approximately 26 clocks per packet in the documented implementation.

## System Architecture
```mermaid
flowchart
	n1["network traffic"]
	n2["RMII to LAN interface"]
	n3["metadata interface"]
	x["FPGA attack detection"]
	subgraph y ["insights"]
		n6["traffic tracking"]
		n7["Count-Min Sketch"]
		n8["sliding window statistics"]
		n9["detection rules"]
		n10["SYN/TCP/UDP/ICMP flood"]
		n11["TCP flag anamolies"]
		n12["custom-tailored packets"]
		n13["land source"]
	end
	n15["alert detection"]
	subgraph n16 ["decisions"]
		n17["Yes"]
		n18["Error reporting (report IP, Port, attack type, severity)"]
		n19["No"]
		n20["continue monitering"]
		n21["LAN to RMII interface"]
		n22["PC2"]
	end
	subgraph n25 ["packet parser"]
		n26["Ethernet header"]
		n27["IPv4 header"]
		n28["TCP"]
		n29["UDP"]
		n30["ICMP"]
	end
	n1 --> n2
	n2 --> n3
	n3 --> x
	x --> y
	n6 --> n7
	n6 --> n8
	n9 --> n10
	n9 --> n11
	n9 --> n12
	n9 --> n13
	y --> n15
	n15 --> n16
	n17 --> n18
	n19 --> n20
	n20 --> n21
	n21 --> n22
	n1 --> n25
	n26 --> n27
	n27 --> n28
	n27 --> n29
	n27 --> n30
  ```
## How it works

The above flowchart is to give a little insight on workflow, though an explaination seems necessary:

1. Network traffic enters through a LAN8720 Ethernet PHY.

2. The FPGA receives Ethernet data through the RMII interface.

3. A packet parser extracts relevant information from supported packets.

4. Extracted metadata is transferred to the attack detection engine using a valid/ready handshake.

5. The detector updates traffic statistics and evaluates attack conditions.

6. Suspicious activity generates an alert record.

7. Alerts are intended to be forwarded to a Raspberry Pi Zero 2 W for monitoring and visualization.

The planned inline forwarding path connects the FPGA's Ethernet receive and transmit logic between two LAN8720 PHY interfaces. The Raspberry Pi is a management and monitoring component, not part of the packet forwarding path.

## Detection capabilities

The detector analyzes packet metadata and implements checks for:

**SYN flood:** Identifies unusually high TCP SYN traffic, including unanswered connection attempts.

**UDP flood:** Detects excessive UDP packet activity.

**ICMP flood:** Monitors unusually high ICMP traffic.

**Port scanning:** Tracks distinct destination IP and port combinations per source.

**TCP flag anomalies:** Detects NULL, Xmas, SYN+FIN, SYN+RST and FIN-without-ACK packets.

**Land attack:** Identifies packets with matching source and destination IP addresses.

**Bogon source addresses:** Flags selected invalid or reserved source address ranges.

**Fragment anomalies:** Checks suspicious fragmentation patterns, including tiny first fragments.

**ICMP reflection counting:** Tracks ICMP echo-reply activity.

## Limitations

1.Detection is based on packet metadata; payload inspection is not implemented.

2.IPv4 traffic is supported by the documented PCAP conversion flow. IPv6, ARP and other unsupported packet types are not analyzed as IPv4 traffic.

3.TCP stream reassembly and application-layer attack detection are not implemented.

4.Count-Min Sketch and Bloom Filter are probabilistic structures and can produce estimation errors or collisions.

5.Distributed or sufficiently slow port scans may remain below per-source detection thresholds.

6.Fragment tracking is limited by the implemented fragment cache.

7.The system is an Intrusion Detection System (IDS), not an Intrusion Prevention System (IPS). It detects and reports suspicious traffic; it does not block packets.

Detection thresholds are configurable starting points and must be tuned against normal traffic before relying on alerts.

## How to contribute

Contributions and improvements are welcome.

1. Fork this repository.

2. Create a separate branch for your changes.

3. Make your RTL or simulation changes.

4. Run the relevant Icarus Verilog testbenches.

5. Include test results and a brief explanation of your changes in your pull request.

For detector changes, try to include directed tests for the new behaviour and regression tests for existing functionality.

For FPGA integration changes, document the target hardware, clock requirements, interfaces and any required pin constraints.

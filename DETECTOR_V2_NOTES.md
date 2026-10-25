# NIDS attack detector v2: what changed, how to use it, what is still unproven

Files: `nids_attack_detector_v2.v` (RTL, also contains `nids_ram`), `nids_attack_detector_v2_tb.v` (49 directed checks),
`nids_replay_tb.v` + `pcap_to_meta.py` (replay real captures), `make_demo_pcap.py` (synthetic demo only), `gen_h3.py` (hash masks).

## Why v1 was not real-world capable, and the fix
| v1 problem | v2 |
|---|---|
| 16 victim slots / 8 scan pairs in registers; more keys than that = silent blind spot (an attacker can simply touch 17 hosts first) | Count-min sketch (2 rows x 1024) + Bloom filter in block RAM. No key limit; counts can only over-estimate, never under-estimate |
| Fixed 1 s window: a burst split across the boundary is missed | Sliding estimate = current window + previous window x (1 - elapsed). Tested: 4 SYNs before + 2 after the boundary alerts, fixed window would not |
| SYN rule fired on any busy server | Also requires SYNs to go unanswered (SYN vs SYN-ACK from the same host), unless the hard ceiling is hit |
| Port scan = distinct ports per (src,dst) pair only | Distinct (dst ip, dst port) per source: catches vertical scans and host sweeps |
| Slow alert consumer (UART) stalled the whole detector; one alert per fragment/malformed packet = self-DoS | Detection never stalls. Stateless alerts rate-limited per class (RL_BURST/window) + one summary record with the suppressed count; queue overflow is counted and reported (code 7) |
| Only SYN, ICMP echo, malformed, fragments | Added UDP flood, echo-reply (reflection) counting, NULL/Xmas/SYN+FIN/SYN+RST/FIN-no-ACK, land attack, bogon source, tiny first fragment |
| Arrays reset in loops (forces thousands of flip-flops, huge parallel comparators) | RAM-based, sequential: ~26 clocks/packet worst case vs 336-clock budget at 100 Mbit/s |

## Integration (drop-in)
Same `meta_*` inputs and `meta_ready` handshake. Changes: `alert_flags` is now **10 bits** (bits 5:0 unchanged; 6 UDP, 7 TCP-flag anomaly,
8 land/bogon, 9 summary record); new `alert_code`s 8, 9, 10; new `stat_*` outputs (leave unconnected if unused).
`meta_ready` is low for ~2050 clocks after reset (RAM clear) and briefly (a few clocks) at each window rollover, so the parser must hold its record
(it should already, per the handshake). Alert record is 152 bits; serialise it from a FIFO.
Reason IDs and flags are documented in the RTL header.

## Tuning: do this before trusting any alert
Defaults (SYN 200, hard 2000, scan 64, ICMP 500, UDP 2000 per ~1 s window) are starting points, not validated values.
Set the thresholds very high, run on your real network for a day or two, and read `stat_peak_syn/scan/icmp/udp` (highest estimate per completed window,
printed per window by the replay testbench). Set thresholds comfortably above the busiest benign window. A DNS or game server will need a higher UDP threshold.
Thresholds must be <= 32767. If your tap sees only one direction of traffic, set `SYN_REQUIRE_UNANSWERED=0`.
The 25% unanswered rule (`SYN_UNANSWERED_SHIFT=2`) can false-positive on a very high-latency, high-rate server (in-flight handshakes look unanswered).

## Validation status (be accurate at your review)
- Simulated with Icarus Verilog 12: 49/49 directed checks pass. Mutation-tested: breaking sliding window, unanswered rule, RAM sweep, queue
  non-stall or dedupe each makes the matching check fail.
- Replay of the synthetic demo capture detects all five injected attacks. **That capture is synthetic, so it proves the toolchain, not accuracy.**
- Yosys estimate for Spartan-6 (not ISE): ~1.8k LUTs, ~0.9k FFs, 47 RAM32M, 9 block RAMs, 1 DSP48A1. Fits an LX9 (5.7k LUTs, 32 BRAM18) but
  **ISE synthesis, place-and-route and 50 MHz timing have not been run.** Note Vivado does not support Spartan-6; use ISE 14.7 (and XPM FIFOs are 7-series-only).
- Nothing has been run on hardware or on real attack traffic yet.

## Known limits
- Metadata only: no payload inspection, no TCP reassembly, IPv4 only, encrypted/application-layer attacks are invisible.
- Per-source scan counting: a distributed slow scan where every source stays under the threshold is not detected; a scan slower than the threshold per window is not detected.
- Sketch/Bloom are probabilistic: heavy key churn can cause occasional false positives (over-count) or missed distinct-count (Bloom collision). Hash masks are fixed in the bitstream (an attacker who knows them could craft collisions); change the seed in `gen_h3.py` per deployment.
- Fragment cache holds 16 datagrams and clears every window (long-timeout fragment attacks can slip through).
- The bogon rule assumes no legitimate traffic from 0/8 (except DHCP discover), 127/8, or >=224.0.0.0.
- Detection only (IDS): no blocking.

## Replay real traffic
    python3 pcap_to_meta.py capture.pcap -o trace.txt --speedup 100         # pcap or pcapng
    iverilog -g2001 -s nids_replay_tb -Pnids_replay_tb.WINDOW_CYCLES=500000 -o replay nids_attack_detector_v2.v nids_replay_tb.v
    vvp replay +TRACE=trace.txt
WINDOW_CYCLES = 50,000,000 / speedup. Keep speedup modest on busy captures (the detector needs ~26 clocks/packet).
Best next step: capture a lab LAN with `nmap -sS`, `nmap -sN`, `hping3 --flood`, plus your normal traffic, and replay it.

Mimas V2 RMII receive / parser integration — initial skeleton

Files:
- rtl/rmii_rx.v: 2-bit RMII dibit to byte receiver.
- rtl/ethernet_rx.v: strips 7 preamble bytes + SFD; passes Ethernet bytes including FCS; aligns tlast.
- rtl/top_packet_parse.v: connects the above to the developer's packet_parser.
- constraints/rmii_parser_example.ucf: example pin constraints; verify before use.

Important:
1. Receive-only. Not yet a bridge or complete MAC.
2. rmii_ref_clk must be a real 50 MHz PHY REF_CLK output. A component marked 50 MHz does not prove the header is configured as REFCLKO.
3. This initial code does not verify or strip the Ethernet FCS. Parser packet_bytes includes FCS.
4. No RX_ER signal is exposed by the module header.
5. Add packet_parser.v to the ISE project, and ensure its port names match the uploaded file.
6. rst_n must be driven to a known state and held low for several RMII clock cycles at startup; it is not mapped in the example UCF.
7. The adapter assumes ready remains high, consistent with the supplied parser.
8. Simulate byte order, preamble/SFD, frame end, and parser metadata before live traffic. Do not use this skeleton for production forwarding.

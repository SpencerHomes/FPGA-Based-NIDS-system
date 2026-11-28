## System Architecture
'''mermaid
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
  '''

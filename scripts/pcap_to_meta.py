#!/usr/bin/env python3
"""
pcap_to_meta.py - turn a real capture (.pcap or .pcapng) into a metadata trace that the
detector replay testbench can consume, so you can test the detector on REAL traffic
(your own nmap/hping3 runs, public datasets, a Wireshark capture of your LAN) without hardware.

It mimics what your packet_parser produces: Ethernet II (+ optional 802.1Q), IPv4 only,
IPv6/ARP/other => unsupported_type, truncated/inconsistent IPv4 => parse_error.

Output: one line per packet, 15 hex tokens:
  gap ctrl src dst proto sport dport tcpflags icmptype icmpcode fragoff ident totlen hdrbytes pktbytes
  gap  = clocks to wait before presenting this packet (derived from capture timestamps)
  ctrl = bit0 parse_ok 1 parse_error 2 unsupported 3 is_ipv4 4 tcp 5 udp 6 icmp
         7 transport_valid 8 fragmented 9 more_fragments 10 dont_fragment

Time scaling: --clk-hz 50000000 replays in real time (1 s of capture = 50M clocks, slow in simulation).
Use --speedup N to compress time N-fold, but keep it modest: the detector needs ~30 clocks per packet,
so heavy compression of busy traffic makes packets queue and distorts the rates. Pair with the
WINDOW_CYCLES you give the testbench: window_cycles = clk_hz * window_seconds / speedup.
"""
import argparse, struct, sys

def read_pcap(f):
    magic = f.read(4)
    if magic in (b'\xd4\xc3\xb2\xa1', b'\x4d\x3c\xb2\xa1'):   # little endian, usec / nsec
        end, nsec = '<', magic == b'\x4d\x3c\xb2\xa1'
    elif magic in (b'\xa1\xb2\xc3\xd4', b'\xa1\xb2\x3c\x4d'):
        end, nsec = '>', magic == b'\xa1\xb2\x3c\x4d'
    else:
        return None
    hdr = f.read(20)
    linktype = struct.unpack(end + 'HHiIII', hdr[:20])[5] if len(hdr) == 20 else 1
    # global header: ver_major(H) ver_minor(H) thiszone(i) sigfigs(I) snaplen(I) network(I)
    while True:
        ph = f.read(16)
        if len(ph) < 16: return
        sec, frac, incl, orig = struct.unpack(end + 'IIII', ph)
        data = f.read(incl)
        ts = sec + frac * (1e-9 if nsec else 1e-6)
        yield ts, data, orig, linktype

def read_pcapng(buf):
    pos, end = 0, '<'
    tsres, link, ifc = {}, {}, 0
    n = len(buf)
    while pos + 12 <= n:
        btype = struct.unpack_from(end + 'I', buf, pos)[0]      # SHB type is a palindrome: endian-safe
        if btype == 0x0A0D0D0A:
            bom = struct.unpack_from('<I', buf, pos + 8)[0]
            end = '<' if bom == 0x1A2B3C4D else '>'
        blen = struct.unpack_from(end + 'I', buf, pos + 4)[0]
        if blen < 12: return
        body = buf[pos + 8: pos + blen - 4]
        if btype == 1:            # Interface Description Block
            lt = struct.unpack_from(end + 'H', body, 0)[0]
            res, o = 1e-6, 8
            while o + 4 <= len(body):
                code, ln = struct.unpack_from(end + 'HH', body, o)
                if code == 0: break
                if code == 9 and ln >= 1:
                    v = body[o + 4]
                    res = (2.0 ** -(v & 0x7F)) if v & 0x80 else (10.0 ** -v)
                o += 4 + ((ln + 3) & ~3)
            tsres[ifc] = res; link[ifc] = lt; ifc += 1
        elif btype == 6:          # Enhanced Packet Block
            iid, hi, lo, cap, orig = struct.unpack_from(end + 'IIIII', body, 0)
            yield ((hi << 32) | lo) * tsres.get(iid, 1e-6), body[20:20 + cap], orig, link.get(iid, 1)
        elif btype == 3:          # Simple Packet Block (no timestamp)
            orig = struct.unpack_from(end + 'I', body, 0)[0]
            yield None, body[4:4 + orig], orig, link.get(0, 1)
        pos += (blen + 3) & ~3

def packets(path):
    with open(path, 'rb') as f:
        head = f.read(4)
        f.seek(0)
        if head == b'\x0a\x0d\x0d\x0a':
            yield from read_pcapng(f.read())
        else:
            g = read_pcap(f)
            if g is None: sys.exit("not a pcap/pcapng file")
            yield from g

def parse(frame, wire_len, linktype):
    """Return dict of detector metadata, emulating the hardware parser."""
    m = dict(ok=0, err=0, unsup=0, ipv4=0, tcp=0, udp=0, icmp=0, tv=0, frag=0, mf=0, df=0,
             src=0, dst=0, proto=0, sp=0, dp=0, fl=0, it=0, ic=0, off=0, ident=0, tot=0, hdr=0, plen=wire_len)
    if linktype == 1:
        if len(frame) < 14: m['err'] = 1; return m
        et = struct.unpack_from('>H', frame, 12)[0]; o = 14
        while et in (0x8100, 0x88A8):
            if len(frame) < o + 4: m['err'] = 1; return m
            et = struct.unpack_from('>H', frame, o + 2)[0]; o += 4
    elif linktype == 101:         # raw IP
        et, o = 0x0800, 0
    else:
        m['unsup'] = 1; return m
    if et != 0x0800:
        m['unsup'] = 1; return m
    ip = frame[o:]
    if len(ip) < 20 or (ip[0] >> 4) != 4: m['err'] = 1; return m
    ihl = (ip[0] & 0xF) * 4
    tot = struct.unpack_from('>H', ip, 2)[0]
    if ihl < 20 or tot < ihl or len(ip) < ihl: m['err'] = 1; return m
    ident, ff = struct.unpack_from('>HH', ip, 4)
    proto = ip[9]
    m.update(ok=1, ipv4=1, proto=proto, hdr=ihl, tot=tot, ident=ident,
             src=struct.unpack_from('>I', ip, 12)[0], dst=struct.unpack_from('>I', ip, 16)[0],
             mf=(ff >> 13) & 1, df=(ff >> 14) & 1, off=ff & 0x1FFF)
    m['frag'] = 1 if (m['mf'] or m['off']) else 0
    tp = ip[ihl:tot] if tot <= len(ip) else ip[ihl:]
    if m['off'] == 0:             # transport header only present in first fragment
        if proto == 6 and len(tp) >= 14:
            m['sp'], m['dp'] = struct.unpack_from('>HH', tp, 0); m['fl'] = tp[13]; m['tcp'] = 1; m['tv'] = 1
        elif proto == 17 and len(tp) >= 8:
            m['sp'], m['dp'] = struct.unpack_from('>HH', tp, 0); m['udp'] = 1; m['tv'] = 1
        elif proto == 1 and len(tp) >= 2:
            m['it'], m['ic'] = tp[0], tp[1]; m['icmp'] = 1; m['tv'] = 1
    return m

def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('capture'); ap.add_argument('-o', '--out', default='trace.txt')
    ap.add_argument('--clk-hz', type=float, default=50e6)
    ap.add_argument('--speedup', type=float, default=1.0)
    ap.add_argument('--max-gap-s', type=float, default=5.0, help='cap idle gaps (capture seconds)')
    ap.add_argument('--limit', type=int, default=0)
    a = ap.parse_args()
    prev = None; n = 0; kinds = dict(ipv4=0, unsup=0, err=0)
    with open(a.out, 'w') as out:
        for ts, data, orig, lt in packets(a.capture):
            m = parse(data, orig, lt)
            if ts is None: gap = 40
            else:
                gap = 40 if prev is None else max(0.0, min(ts - prev, a.max_gap_s))
                if prev is not None: gap = int(gap * a.clk_hz / a.speedup)
                prev = ts
            gap = max(gap, 1)
            ctrl = (m['ok'] | m['err'] << 1 | m['unsup'] << 2 | m['ipv4'] << 3 | m['tcp'] << 4 | m['udp'] << 5 |
                    m['icmp'] << 6 | m['tv'] << 7 | m['frag'] << 8 | m['mf'] << 9 | m['df'] << 10)
            out.write("%x %x %x %x %x %x %x %x %x %x %x %x %x %x %x\n" % (
                gap, ctrl, m['src'], m['dst'], m['proto'], m['sp'], m['dp'], m['fl'], m['it'], m['ic'],
                m['off'], m['ident'], m['tot'], m['hdr'], m['plen']))
            n += 1; kinds['ipv4'] += m['ipv4']; kinds['unsup'] += m['unsup']; kinds['err'] += m['err']
            if a.limit and n >= a.limit: break
    print("wrote %d packets to %s (ipv4=%d unsupported=%d parse_error=%d)" % (n, a.out, kinds['ipv4'], kinds['unsup'], kinds['err']))

if __name__ == '__main__':
    main()

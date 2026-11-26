"""Minimal local web dashboard for live FPGA NIDS UART alerts."""
from __future__ import annotations

import json
import os
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from urllib.parse import urlparse

from serial_listener import BAUD_RATE, NIDSReceiver

receiver = NIDSReceiver()

PAGE = r'''<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="color-scheme" content="dark"><title>SENTINEL · NIDS Monitor</title>
<style>
:root{color-scheme:dark;--bg:#080d15;--panel:#101925;--panel2:#131f2d;--line:#253447;--text:#edf4ff;--muted:#8b9bb1;--cyan:#63e6d1;--red:#ff7187;--orange:#ffc078;--yellow:#f4dc80;--blue:#80b9ff;--violet:#c1a7ff;--green:#70e0b7}
*{box-sizing:border-box}body{margin:0;background:radial-gradient(ellipse at 75% -25%,#17344b 0,transparent 46%),var(--bg);color:var(--text);font:14px/1.5 Inter,ui-sans-serif,system-ui,-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif;min-height:100vh}button,input,select{font:inherit}button{cursor:pointer}.shell{max-width:1500px;margin:auto;padding:30px clamp(16px,3.2vw,46px) 40px}.top{display:flex;justify-content:space-between;align-items:center;gap:20px;margin-bottom:28px}.identity{display:flex;align-items:center;gap:13px}.logo{width:43px;height:43px;border-radius:13px;display:grid;place-items:center;color:#06131c;font-size:23px;font-weight:900;background:linear-gradient(145deg,#65f0dc,#699bff);box-shadow:0 8px 30px #53e9d51c}.brand{font-size:16px;letter-spacing:.16em;font-weight:800}.subtitle{font-size:12px;color:var(--muted);margin-top:3px}.status{display:flex;align-items:center;gap:9px;border:1px solid var(--line);background:#0f1a27;border-radius:999px;padding:9px 13px;font-size:11px;color:#c5d3e6;max-width:100%}.dot{width:7px;height:7px;background:var(--red);border-radius:50%;flex:none;box-shadow:0 0 12px currentColor}.dot.on{background:var(--green)}.intro{display:flex;align-items:flex-end;justify-content:space-between;gap:20px;margin-bottom:20px}.eyebrow{font-size:10px;color:var(--cyan);letter-spacing:.19em;font-weight:750;text-transform:uppercase;margin-bottom:6px}.title{margin:0;font-size:clamp(25px,3vw,35px);letter-spacing:-.045em;line-height:1.18;font-weight:700}.desc{color:var(--muted);font-size:13px;margin-top:8px}.updated{font-size:11px;color:#72839c;white-space:nowrap}.metrics{display:grid;grid-template-columns:repeat(4,minmax(0,1fr));gap:13px;margin-bottom:16px}.metric,.panel{border:1px solid var(--line);background:linear-gradient(145deg,#121d2b,#0e1621);border-radius:14px;min-width:0}.metric{padding:17px 19px;min-height:106px;position:relative;overflow:hidden}.metric:after{content:"";position:absolute;width:70px;height:70px;right:-22px;top:-27px;background:var(--accent);opacity:.12;filter:blur(23px);border-radius:50%}.metric-label{color:var(--muted);font-size:11px;display:flex;align-items:center;gap:8px}.metric-label:before{content:"";width:6px;height:6px;border-radius:50%;background:var(--accent)}.metric-value{font-size:31px;letter-spacing:-.05em;font-weight:700;line-height:1.2;margin-top:11px}.metric-note{font-size:10px;color:#71829a;margin-top:4px}.panel{padding:18px 20px;margin-bottom:15px}.panel-head{display:flex;justify-content:space-between;align-items:center;gap:13px;margin-bottom:15px}.panel-title{font-size:14px;font-weight:700;letter-spacing:-.015em}.panel-note{font-size:11px;color:var(--muted);margin-top:3px}.controls{display:flex;align-items:center;gap:8px;flex-wrap:wrap}.input,.select,.btn{border:1px solid #2c3d52;border-radius:8px;background:#0a121d;color:#dce8f8;padding:9px 11px;font-size:11px;outline:none}.input:focus,.select:focus{border-color:var(--cyan)}.btn{background:#182638;transition:border-color .15s}.btn:hover{border-color:var(--cyan)}.btn.primary{background:var(--cyan);border-color:var(--cyan);color:#05151b;font-weight:800}.btn:disabled{opacity:.55;cursor:wait}.settings-grid{display:grid;grid-template-columns:minmax(180px,1fr) minmax(160px,1fr) auto;gap:12px;align-items:end}.field label{display:block;font-size:10px;color:var(--muted);margin-bottom:6px}.field .input,.field .select{width:100%;height:37px}.fixed-baud{height:37px;padding:9px 11px;border:1px solid #2c3d52;border-radius:8px;background:#111d2a;color:var(--cyan);font:12px ui-monospace,monospace;white-space:nowrap}.settings-help{font-size:11px;color:#7f90a6;margin-top:10px}.alerts-tools{display:flex;gap:8px;align-items:center;flex-wrap:wrap}.search{width:min(245px,52vw)}.table-wrap{overflow:auto}table{width:100%;border-collapse:collapse;white-space:nowrap}th{text-align:left;font-size:9px;letter-spacing:.12em;text-transform:uppercase;color:#71829b;font-weight:700;padding:10px 10px;border-bottom:1px solid var(--line)}td{font-size:11px;padding:12px 10px;border-bottom:1px solid #1d2a39;color:#d4deec}tbody tr{cursor:pointer;transition:background .12s}tbody tr:hover{background:#172537}tbody tr:last-child td{border-bottom:0}.mono{font-family:ui-monospace,SFMono-Regular,Consolas,monospace;font-size:10px}.muted{color:var(--muted)}.type{font-size:11px;font-weight:700;color:#edf3ff}.subline{font-size:10px;color:#72839b;margin-top:3px}.badge{display:inline-flex;align-items:center;gap:6px;padding:4px 7px;border-radius:5px;font-size:9px;font-weight:800;letter-spacing:.055em}.badge:before{content:"";width:5px;height:5px;border-radius:50%;background:currentColor}.CRITICAL{color:#ff91a1;background:#481c2a}.HIGH{color:#ffc17c;background:#432b1a}.MEDIUM{color:#f3df88;background:#3d361d}.LOW{color:#85bdff;background:#1b3048}.INFO{color:#aebbd0;background:#273244}.UNCLASSIFIED{color:#c1a7ff;background:#30244d}.empty{text-align:center;padding:40px 15px;color:var(--muted)}.empty strong{display:block;color:#d2deee;font-size:13px;margin:7px 0 4px}.empty span{font-size:11px}.bottom-line{display:flex;justify-content:space-between;gap:12px;flex-wrap:wrap;font-size:10px;color:#657690;margin-top:10px}.modal{position:fixed;inset:0;padding:20px;z-index:10;display:none;align-items:center;justify-content:center;background:#03070dcc}.modal-card{width:min(720px,100%);max-height:88vh;overflow:auto;border:1px solid #30435b;border-radius:15px;background:#101a28;padding:20px;box-shadow:0 30px 90px #0008}.modal-head{display:flex;justify-content:space-between;gap:15px;align-items:flex-start;margin-bottom:14px}.detail-grid{display:grid;grid-template-columns:1fr 1fr;gap:9px}.detail{background:#0a121d;border:1px solid #202f42;border-radius:9px;padding:11px;min-width:0}.detail-label{font-size:9px;color:#788ba4;text-transform:uppercase;letter-spacing:.1em}.detail-value{font-size:12px;margin-top:5px;overflow-wrap:anywhere}.raw-label{font-size:10px;letter-spacing:.1em;color:#788ba4;margin:17px 0 7px}.raw{font:11px/1.6 ui-monospace,monospace;white-space:pre-wrap;overflow-wrap:anywhere;background:#080e16;padding:12px;border-radius:8px;color:#b9cbe1}.toast{position:fixed;bottom:18px;right:18px;max-width:min(440px,90vw);background:#172537;border:1px solid #3a4e68;border-radius:9px;padding:12px 15px;font-size:12px;display:none;z-index:20}.footer{font-size:10px;color:#5f7189;text-align:center;margin-top:17px}
.status-wrap{display:flex;align-items:center;justify-content:flex-end;gap:8px;flex-wrap:wrap}.dot.wait{background:var(--orange)}.filter-checklist{display:flex;align-items:center;gap:6px;flex-wrap:wrap;max-width:100%}.filter-check{display:inline-flex;align-items:center;gap:5px;white-space:nowrap;border:1px solid #2c3d52;border-radius:7px;background:#0a121d;padding:7px 8px;color:#cbd8e8;font-size:10px;cursor:pointer;user-select:none}.filter-check:has(input:checked){border-color:#49657d;background:#172638}.filter-check input{width:12px;height:12px;margin:0;accent-color:var(--cyan);cursor:pointer}.filter-check.all{color:var(--cyan)}.event-tools-row{display:flex;gap:10px;align-items:center;justify-content:space-between;flex-wrap:wrap}.filter-label{color:var(--muted);font-size:10px;white-space:nowrap}@media(max-width:600px){.status-wrap{justify-content:flex-start}.filter-checklist{width:100%}.event-tools-row{align-items:flex-start}.filter-label{width:100%}}
@media(max-width:900px){.metrics{grid-template-columns:repeat(2,minmax(0,1fr))}.settings-grid{grid-template-columns:1fr 1fr}.settings-grid .apply-wrap{grid-column:1/-1}.settings-grid .btn{width:100%}}@media(max-width:600px){.shell{padding:19px 12px 28px}.top{align-items:flex-start;flex-direction:column;margin-bottom:23px}.intro{display:block}.updated{margin-top:11px}.panel{padding:14px}.panel-head{align-items:flex-start;flex-direction:column}.controls{width:100%}.alerts-tools{width:100%}.search{width:100%;flex:1}.settings-grid{grid-template-columns:1fr}.settings-grid .apply-wrap{grid-column:auto}.metrics{gap:8px}.metric{padding:13px;min-height:98px}.metric-value{font-size:26px}.detail-grid{grid-template-columns:1fr 1fr}}
</style></head>
<body><div class="shell">
<header class="top"><div class="identity"><div class="logo">⌁</div><div><div class="brand">SENTINEL</div><div class="subtitle">FPGA network intrusion monitor</div></div></div><div class="status-wrap"><div class="status"><span id="statusDot" class="dot"></span><span id="statusText">UART disconnected</span></div><div class="status"><span id="boardStatusDot" class="dot wait"></span><span id="boardStatusText">Awaiting board heartbeat</span></div></div></header>
<section class="intro"><div><div class="eyebrow">Security overview</div><h1 class="title">Live alert monitor</h1><div class="desc">Incoming UART alerts, parsed and classified as they arrive.</div></div><div class="updated" id="updatedAt">Waiting for data</div></section>
<section class="metrics">
  <div class="metric" style="--accent:var(--cyan)"><div class="metric-label">Events received</div><div class="metric-value" id="totalCount">0</div><div class="metric-note">Current event history</div></div>
  <div class="metric" style="--accent:var(--red)"><div class="metric-label">Critical</div><div class="metric-value" id="criticalCount">0</div><div class="metric-note">Critical severity alerts</div></div>
  <div class="metric" style="--accent:var(--orange)"><div class="metric-label">High severity</div><div class="metric-value" id="highCount">0</div><div class="metric-note">High severity alerts</div></div>
  <div class="metric" style="--accent:var(--violet)"><div class="metric-label">Parser errors</div><div class="metric-value" id="errorCount">0</div><div class="metric-note">Lines that could not be parsed</div></div>
</section>
<section class="panel"><div class="panel-head"><div><div class="panel-title">Input connection</div><div class="panel-note">UART speed is fixed at 19200 baud · 8 data bits · no parity · 1 stop bit (8N1)</div></div><div class="mono muted" id="rxInfo">0 lines · 0 bytes</div></div>
  <div class="settings-grid"><div class="field"><label for="modeInput">Input source</label><select class="select" id="modeInput"><option value="HARDWARE">Hardware UART</option><option value="SIMULATION">Demo events (simulated)</option></select></div><div class="field"><label for="portInput">Serial port</label><input class="input" id="portInput" list="portOptions" placeholder="COM3 or /dev/ttyUSB0" autocomplete="off"><datalist id="portOptions"></datalist></div><div class="field"><label>Fixed baud rate</label><div class="fixed-baud">19200 baud</div></div><div class="apply-wrap"><button class="btn primary" id="applyBtn">Apply input</button></div></div>
  <div class="settings-help" id="connectionHelp">Choose the serial port connected to the FPGA UART adapter. Close any other application using that port.</div>
</section>
<section class="panel" id="alertsPanel"><div class="panel-head"><div><div class="panel-title">Event stream</div><div class="panel-note" id="visibleLabel">Waiting for the first event</div></div><div class="alerts-tools"><input id="searchBox" class="input search" placeholder="Search event, IP, port…" aria-label="Search events"><button class="btn" id="exportBtn">Export JSON</button><button class="btn" id="clearBtn">Clear all</button><button class="btn" id="refreshBtn">Refresh</button></div></div><div class="event-tools-row" style="margin-bottom:14px"><span class="filter-label">Filter by severity · select any combination</span><div class="filter-checklist" id="severityFilter" role="group" aria-label="Filter by severity"><label class="filter-check all"><input type="checkbox" id="severityAll" checked>All</label><label class="filter-check"><input type="checkbox" data-severity="CRITICAL" checked>Critical</label><label class="filter-check"><input type="checkbox" data-severity="HIGH" checked>High</label><label class="filter-check"><input type="checkbox" data-severity="MEDIUM" checked>Medium</label><label class="filter-check"><input type="checkbox" data-severity="LOW" checked>Low</label><label class="filter-check"><input type="checkbox" data-severity="INFO" checked>Info / heartbeat</label><label class="filter-check"><input type="checkbox" data-severity="UNCLASSIFIED" checked>Unclassified</label></div></div>
<div class="table-wrap"><table><thead><tr><th>Severity</th><th>Alert</th><th>Source</th><th>Destination</th><th>Protocol</th><th>Time received</th></tr></thead><tbody id="eventsBody"><tr><td colspan="6"><div class="empty"><strong>Waiting for events</strong><span>Connect the FPGA UART or switch to demo events.</span></div></td></tr></tbody></table></div><div class="bottom-line"><span id="footerStatus">Receiver initializing</span><span>Click any row to inspect the full alert payload.</span></div></section>
<div class="footer">Local dashboard · Data is kept in memory and clears when the application restarts.</div>
</div>
<div class="modal" id="modal"><div class="modal-card"><div class="modal-head"><div><div class="panel-title" id="modalTitle">Alert details</div><div class="panel-note" id="modalMeta"></div></div><button class="btn" id="closeModal">Close</button></div><div class="detail-grid" id="modalDetails"></div><div class="raw-label">RAW PAYLOAD</div><pre class="raw" id="rawPayload"></pre></div></div><div class="toast" id="toast"></div>
<script>
const $=id=>document.getElementById(id);let state=null,lastStatus='',configDirty=false;
function esc(v){return String(v??'—').replace(/[&<>"']/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));}
function val(v){return v===null||v===undefined||v===''?'—':String(v)}
function sev(v){return ['CRITICAL','HIGH','MEDIUM','LOW','INFO','UNCLASSIFIED'].includes(v)?v:'UNCLASSIFIED'}
function toast(msg){$('toast').textContent=msg;$('toast').style.display='block';clearTimeout(window._toastTimer);window._toastTimer=setTimeout(()=>$('toast').style.display='none',3200)}
function shortTime(v){if(!v)return '—';let d=new Date(v);return Number.isNaN(d.getTime())?String(v):d.toLocaleTimeString([], {hour:'2-digit',minute:'2-digit',second:'2-digit',hour12:false})}
function selectedSeverities(){return [...document.querySelectorAll('#severityFilter input[data-severity]:checked')].map(el=>el.dataset.severity)}
function syncSeverityAll(){let checks=[...document.querySelectorAll('#severityFilter input[data-severity]')];$('severityAll').checked=checks.length>0&&checks.every(el=>el.checked);$('severityAll').indeterminate=checks.some(el=>el.checked)&&checks.some(el=>!el.checked)}
function renderEvents(events){let q=$('searchBox').value.trim().toLowerCase(),filters=selectedSeverities();const list=events.filter(e=>{let text=[e.type,e.display_type,e.severity,e.category,e.src_ip,e.dst_ip,e.src_port,e.dst_port,e.protocol,e.description,e.rule_id,e.device_status,e.device_message_id,e.device_uptime].map(x=>x??'').join(' ').toLowerCase();return(!q||text.includes(q))&&filters.includes(e.severity)});$('visibleLabel').textContent=`Showing ${list.length} of ${events.length} events`;
if(!list.length){$('eventsBody').innerHTML=`<tr><td colspan="6"><div class="empty"><strong>${events.length?'No matching alerts':'Waiting for alerts'}</strong><span>${events.length?'Change the search or severity filter.':'Connect your UART source or select demo events.'}</span></div></td></tr>`;return}
$('eventsBody').innerHTML=list.slice(0,250).map(e=>`<tr data-id="${e.id}"><td><span class="badge ${sev(e.severity)}">${esc(e.severity)}</span></td><td><div class="type">${esc(e.display_type||e.type)}</div><div class="subline mono">${e.is_heartbeat?'SYSTEM · firmware '+esc(e.device_status||'ALIVE')+' · msg '+esc(e.device_message_id??'—'):esc(e.rule_id||e.type||'')}</div>${e.source_mode==='SIMULATION'?'<div class="subline" style="color:var(--violet)">DEMO EVENT</div>':''}</td><td><div class="mono">${esc(e.src_ip)}</div>${e.src_port!=null?`<div class="subline mono">port ${esc(e.src_port)}</div>`:''}</td><td><div class="mono">${esc(e.dst_ip)}</div>${e.dst_port!=null?`<div class="subline mono">port ${esc(e.dst_port)}</div>`:''}</td><td>${esc(e.protocol)}</td><td class="mono">${esc(shortTime(e.timestamp))}</td></tr>`).join('');
$('eventsBody').querySelectorAll('tr[data-id]').forEach(row=>row.addEventListener('click',()=>{let ev=events.find(x=>String(x.id)===row.dataset.id);if(ev)showDetail(ev)}));}
function showDetail(e){$('modalTitle').textContent=e.display_type||e.type;$('modalMeta').textContent=`${e.is_heartbeat?'System event':'Event'} #${e.id} · ${e.source_mode}`;let details=[['Category',e.category],['Severity',e.severity],['Event time',e.timestamp],['Source IP',e.src_ip],['Destination IP',e.dst_ip],['Source port',e.src_port],['Destination port',e.dst_port],['Protocol',e.protocol],['TCP flags',e.flags],['Rule ID',e.rule_id],['Description',e.description]];if(e.is_heartbeat){details.push(['Board status',e.device_status],['Device message ID',e.device_message_id],['Firmware version',e.firmware_version],['Uptime field (up)',e.device_uptime],['CRC',e.crc])}$('modalDetails').innerHTML=details.map(([k,v])=>`<div class="detail"><div class="detail-label">${esc(k)}</div><div class="detail-value">${esc(val(v))}</div></div>`).join('');$('rawPayload').textContent=JSON.stringify(e.raw,null,2);$('modal').style.display='flex'}
function update(s){state=s;let st=s.status,sm=s.summary;let sim=st.mode==='SIMULATION',connected=!!st.connected;$('statusDot').classList.toggle('on',connected);$('statusText').textContent=sim?'Demo mode active':connected?'UART connected':'UART disconnected';const boardDot=$('boardStatusDot');boardDot.classList.remove('on','wait');if(sim){boardDot.classList.add('wait');$('boardStatusText').textContent='Board status not measured in demo mode'}else if(st.board_online){boardDot.classList.add('on');$('boardStatusText').textContent=`FPGA board online · heartbeat ${st.last_heartbeat_age_seconds??0}s ago`}else if(st.board_state==='HEARTBEAT LOST'){boardDot.classList.add('wait');$('boardStatusText').textContent=`Heartbeat lost · last seen ${st.last_heartbeat_age_seconds}s ago`}else{$('boardStatusText').textContent=connected?'UART connected · awaiting heartbeat':'Awaiting board heartbeat';} $('totalCount').textContent=sm.total.toLocaleString();$('criticalCount').textContent=sm.critical.toLocaleString();$('highCount').textContent=sm.high.toLocaleString();$('errorCount').textContent=Number(st.parse_errors||0).toLocaleString();$('rxInfo').textContent=`${Number(st.lines_received||0).toLocaleString()} lines · ${Number(st.bytes_received||0).toLocaleString()} bytes`;$('updatedAt').textContent='Updated '+new Date().toLocaleTimeString();$('footerStatus').textContent=st.last_error?`Receiver issue: ${st.last_error}`:st.state;$('footerStatus').style.color=st.last_error?'var(--orange)':'var(--muted)';$('connectionHelp').textContent=sim?'Demo events are synthetic and clearly labelled; board heartbeat status is not measured in demo mode.':st.board_online?`Connected to ${st.port} at fixed 19200 baud; FPGA heartbeat is current.`:connected?`Connected to ${st.port} at fixed 19200 baud. Waiting for a heartbeat from the FPGA.`:(st.last_error||'Choose the serial port connected to the FPGA UART adapter. Close any other application using that port.');if(!configDirty){if($('modeInput').value!==st.mode)$('modeInput').value=st.mode;if(document.activeElement!==$('portInput'))$('portInput').value=st.port||'';}$('portInput').disabled=sim;$('portInput').style.opacity=sim?'.45':'1';$('portInput').style.cursor=sim?'not-allowed':'text';renderEvents(s.events);if(st.last_error&&st.last_error!==lastStatus){lastStatus=st.last_error;}else if(!st.last_error){lastStatus=''} }
async function refresh(){try{let r=await fetch('/api/state',{cache:'no-store'});if(!r.ok)throw Error(`HTTP ${r.status}`);update(await r.json())}catch(e){$('statusDot').classList.remove('on');$('statusText').textContent='Dashboard API unavailable';$('footerStatus').textContent=e.message}}
async function loadPorts(){try{let r=await fetch('/api/ports',{cache:'no-store'});let j=await r.json();$('portOptions').innerHTML=j.ports.map(p=>`<option value="${esc(p)}"></option>`).join('')}catch(e){}}
$('modeInput').addEventListener('change',()=>{configDirty=true});$('portInput').addEventListener('input',()=>{configDirty=true});
$('applyBtn').addEventListener('click',async()=>{let b=$('applyBtn');b.disabled=true;b.textContent='Applying…';try{let r=await fetch('/api/config',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({mode:$('modeInput').value,port:$('portInput').value.trim()})});let j=await r.json();if(!r.ok)throw Error(j.error||'Could not apply input');configDirty=false;toast(j.status.state||'Input updated');await refresh()}catch(e){toast(e.message)}finally{b.disabled=false;b.textContent='Apply input'}});
$('refreshBtn').addEventListener('click',refresh);$('searchBox').addEventListener('input',()=>state&&renderEvents(state.events));$('severityFilter').querySelectorAll('input[data-severity]').forEach(el=>el.addEventListener('change',()=>{syncSeverityAll();state&&renderEvents(state.events)}));$('severityAll').addEventListener('change',()=>{$('severityFilter').querySelectorAll('input[data-severity]').forEach(el=>el.checked=$('severityAll').checked);$('severityAll').indeterminate=false;state&&renderEvents(state.events)});$('closeModal').addEventListener('click',()=>$('modal').style.display='none');$('modal').addEventListener('click',e=>{if(e.target===$('modal'))$('modal').style.display='none'});document.addEventListener('keydown',e=>{if(e.key==='Escape')$('modal').style.display='none'});$('clearBtn').addEventListener('click',async()=>{if(!state||!state.events.length){toast('There are no events to clear.');return}if(!window.confirm(`Clear all ${state.events.length} stored events? UART reception will continue.`))return;const b=$('clearBtn');b.disabled=true;try{let r=await fetch('/api/clear',{method:'POST'});let j=await r.json();if(!r.ok)throw Error(j.error||'Could not clear event history');toast(`Cleared ${j.cleared} events. UART reception continues.`);await refresh()}catch(e){toast(e.message)}finally{b.disabled=false}});$('exportBtn').addEventListener('click',()=>{if(!state||!state.events.length){toast('There are no alerts to export yet.');return}let blob=new Blob([JSON.stringify(state.events,null,2)],{type:'application/json'}),url=URL.createObjectURL(blob),a=document.createElement('a');a.href=url;a.download='nids-alerts.json';a.click();setTimeout(()=>URL.revokeObjectURL(url),1000)});
loadPorts();refresh();setInterval(refresh,1000);setInterval(loadPorts,10000);
</script></body></html>'''


class DashboardHandler(BaseHTTPRequestHandler):
    server_version = "SentinelNIDS/1.1"

    def log_message(self, fmt, *args):
        # Quiet normal browser polling; show unexpected endpoint logs.
        if self.path not in ("/", "/api/state", "/api/ports"):
            super().log_message(fmt, *args)

    def _send(self, code: int, body: bytes, content_type: str) -> None:
        self.send_response(code)
        self.send_header("Content-Type", content_type)
        self.send_header("Cache-Control", "no-store")
        self.send_header("X-Content-Type-Options", "nosniff")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def _json(self, code: int, obj) -> None:
        self._send(code, json.dumps(obj, ensure_ascii=False).encode("utf-8"), "application/json; charset=utf-8")

    def do_GET(self) -> None:
        path = urlparse(self.path).path
        if path == "/":
            self._send(200, PAGE.encode("utf-8"), "text/html; charset=utf-8")
        elif path == "/api/state":
            self._json(200, receiver.get_state())
        elif path == "/api/ports":
            self._json(200, {"ports": receiver.available_ports()})
        else:
            self._json(404, {"error": "Not found"})

    def do_POST(self) -> None:
        path = urlparse(self.path).path
        if path == "/api/clear":
            cleared = receiver.clear_events()
            self._json(200, {"ok": True, "cleared": cleared})
            return
        if path != "/api/config":
            self._json(404, {"error": "Not found"})
            return
        try:
            length = int(self.headers.get("Content-Length", "0"))
            if length < 0 or length > 16_384:
                self._json(413, {"error": "Request body too large"})
                return
            body = json.loads(self.rfile.read(length).decode("utf-8")) if length else {}
            # Baud is intentionally neither accepted nor read from client input.
            status = receiver.configure(mode=body.get("mode"), port=body.get("port"))
            if status["baud"] != BAUD_RATE:
                raise RuntimeError("UART baud-rate invariant failed")
            self._json(200, {"ok": True, "status": status})
        except (TypeError, ValueError, json.JSONDecodeError) as exc:
            self._json(400, {"ok": False, "error": str(exc)})


def main() -> None:
    host = os.getenv("NIDS_HOST", "127.0.0.1")
    port = int(os.getenv("NIDS_PORT", "5000"))
    server = ThreadingHTTPServer((host, port), DashboardHandler)
    print("\nSENTINEL FPGA NIDS dashboard")
    print(f"Open http://{host}:{port} in your browser")
    print(f"UART is fixed at {BAUD_RATE} baud, 8N1. Stop with Ctrl+C.\n")
    try:
        server.serve_forever(poll_interval=0.4)
    except KeyboardInterrupt:
        print("\nStopping dashboard…")
    finally:
        server.server_close()
        receiver.shutdown()


if __name__ == "__main__":
    main()

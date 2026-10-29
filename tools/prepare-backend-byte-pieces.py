#!/usr/bin/env python3
"""Split exact native byte agreement at section and submitted 4KiB boundaries."""
from guest_layout import LAST_LABEL, STOP_LABEL
import pathlib,time,json,re,subprocess,concurrent.futures
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
ids=[0,1,2,4,5,6]+list(range(64,STOP_LABEL));position=0;groups={};manifest=[]
header="set_option autoImplicit false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nnamespace InitECandidate.Proofs.BackendStages.BytePieces\n"
def check(name,source):
 cert=work/f"{name}.check.json"
 output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"
 if (cert.exists() and output.exists() and
     output.stat().st_mtime_ns>=source.stat().st_mtime_ns and
     cert.stat().st_mtime_ns>=output.stat().st_mtime_ns and
     json.loads(cert.read_text()).get("returncode")==0):return
 start=time.monotonic();r=subprocess.run(["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py"),"-o",str(root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"),str(source)],cwd=root,text=True,capture_output=True)
 (work/f"{name}.check.log").write_text(r.stdout+r.stderr);cert.write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-start)));print(name,r.returncode,flush=True);r.check_returncode()
def candidate(index):
 entries=groups[index];name=f"ByteCandidate{index:03d}";module=root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean"
 imports="".join(f"import InitECandidate.Proofs.BackendStages.BytePiecesData{n}\n" for n in dict.fromkeys(e[0] for e in entries))
 pieces=[e[1] for e in entries]
 text=imports+f"import InitECandidate.Bytes{index:03d}\n"+header
 text+=f"theorem candidate{index:03d}_eq : InitECandidate.bytes{index:03d} = ["+", ".join(pieces)+"].flatten := by\n  rw ["+", ".join(p+"_eq" for p in pieces)+"]\n  rfl\n#print axioms candidate"+f"{index:03d}_eq\nend InitECandidate.Proofs.BackendStages.BytePieces\n"
 
 for n in dict.fromkeys(e[0] for e in entries):futures[n].result()
 module.write_text(text);check(name,module)
pool=concurrent.futures.ThreadPoolExecutor(max_workers=4)
futures={}
def section_checks(n,data_source,agreement_source):
 check(f"BytePiecesData{n}",data_source)
 check(f"ByteSectionAgreement{n}",agreement_source)

for n in ids:
 dep=work/f"BytesData{n}.check.json"
 data_source=root/f"submission/InitECandidate/Proofs/BackendStages/BytesData{n}.lean"
 data_output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/BytesData{n}.olean"
 while not (dep.exists() and data_output.exists() and
            data_output.stat().st_mtime_ns>=data_source.stat().st_mtime_ns and
            dep.stat().st_mtime_ns>=data_output.stat().st_mtime_ns):time.sleep(5)
 if json.loads(dep.read_text())["returncode"]:raise RuntimeError(str(dep))
 text=(root/f"submission/InitECandidate/Proofs/BackendStages/BytesData{n}.lean").read_text();values=[int(x) for x in re.findall(r"(\d+)#8",text)]
 pieces=[];cursor=0;completed=[];s="import InitECandidate.Proofs.ComputationCache\nimport Std\n"+header
 while cursor<len(values):
  index=position//4096;size=min(4096-position%4096,len(values)-cursor);piece=f"piece{n}_{len(pieces)}";raw=f"raw{n}_{len(pieces)}"
  vals=values[cursor:cursor+size]
  s+=f"def {raw} : List (BitVec 8) := ["+", ".join(str(v)+"#8" for v in vals)+"]\n"
  s+=f"def {piece} : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue {raw}).val\ntheorem {piece}_eq : {piece} = {raw} := InitECandidate.Proofs.ComputationCache.boxedValue_eq {raw}\n"
  groups.setdefault(index,[]).append((n,piece));pieces.append(piece);cursor+=size;position+=size
  if position%4096==0:completed.append(index)
 name=f"BytePiecesData{n}";source=root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean";source.write_text(s+"end InitECandidate.Proofs.BackendStages.BytePieces\n");data_source=source
 name=f"ByteSectionAgreement{n}";source=root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean"
 s=f"import InitECandidate.Proofs.BackendStages.BytesData{n}\nimport InitECandidate.Proofs.BackendStages.BytePiecesData{n}\n"+header
 s+=f"theorem section{n}_eq : ByteData.bytes{n} = ["+", ".join(pieces)+"].flatten := by\n"
 if pieces:s+="  rw ["+", ".join(p+"_eq" for p in pieces)+"]\n"
 s+="  rfl\n#print axioms section"+str(n)+"_eq\nend InitECandidate.Proofs.BackendStages.BytePieces\n";source.write_text(s);futures[n]=pool.submit(section_checks,n,data_source,source)
 manifest.append(dict(identifier=n,length=len(values),pieces=pieces,start=position-len(values)))
 for index in completed:candidate(index)
 (work/"byte-pieces-manifest.json").write_text(json.dumps(manifest,indent=2))
for f in futures.values():f.result()
pool.shutdown()
if position%4096:candidate(position//4096)
assert position==979140,position
print(f"All section/candidate byte agreements complete: {position} bytes",flush=True)

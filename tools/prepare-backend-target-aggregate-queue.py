#!/usr/bin/env python3
"""One compiler, resumable target aggregate queue waiting for certified leaves."""
import argparse,fcntl,hashlib,json,re,subprocess,time
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument("--seconds",type=int,default=180);p.add_argument("--cpus",default="12-15");p.add_argument("--origin-only",action="store_true");p.add_argument("--output-only",action="store_true");p.add_argument("--final-only",action="store_true");a=p.parse_args()
root=Path(__file__).resolve().parents[1];base=root/"submission/InitECandidate/Proofs/BackendStages/TargetChecks";out=root/".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/TargetChecks";work=root/"work/lean-perf/backend-stages/target-checks";state=work/"aggregate-queue-state";state.mkdir(parents=True,exist_ok=True)
names=[name for k in range(26) for name in [f"Labels0Chunk{k}",f"Labels1Chunk{k}",f"CorrectEncodeChunk0_{k}",f"CorrectEncodeChunk1_{k}"]]+["Phase0","Phase1","Labels0","Labels1","LabelEndpoints"]
if a.origin_only:names=[f"OriginChunk{k}" for k in range(26)]+["InitialOrigin"]
if a.output_only:names=["LabelEndpoints"]
if a.final_only:names=["LabelEndpoints"]+[f"LabelsFinalChunk{k}" for k in range(26)]+["FinalLabelComposition"]
def imports(name):return re.findall(r"^import ([\w.]+)",(base/f"{name}.lean").read_text(),re.M)
def ready(module):
 source=root/("submission" if module.startswith("InitECandidate.") else ".")/(module.replace(".","/")+".lean");artifact=root/".lake/build/lib/lean"/(module.replace(".","/")+".olean")
 if not artifact.exists():return False
 if not source.exists() or artifact.stat().st_mtime>=source.stat().st_mtime:return True
 aggregate=state/(module.rsplit('.',1)[-1]+".json")
 if aggregate.exists() and source.exists():
  recorded=json.loads(aggregate.read_text())
  digest=hashlib.sha256(source.read_bytes()+(base/"Composition.lean").read_bytes()).hexdigest()
  if recorded.get("returncode")==0 and recorded.get("sha256")==digest:return True
 m=re.fullmatch(r"InitECandidate.Proofs.BackendStages.TargetChecks.(Correct)?(?:Phase|Labels|Encode)[01]_(\d+)",module)
 if m:
  prefix=m[1] or "";n=m[2];marker=work/("correct-queue-state" if prefix else "queue-state")/(n+".json")
  if marker.exists():
   recorded=json.loads(marker.read_text());files=[base/f"Initial{n}.lean"]+[base/f"{prefix}{kind}{phase}_{n}.lean" for phase in [0,1] for kind in ["Data","Labels","Encode","Phase"]]+[root/f"submission/InitECandidate/Proofs/BackendStages/{s}.lean" for s in ["TargetLabels0","TargetLabels1","TargetFfis"]]
   digest=hashlib.sha256(b"".join(f.read_bytes() for f in files)).hexdigest()
   return recorded.get("returncode")==0 and recorded.get("sha256")==digest
 return False
pending=list(names);failed=[];completed=0
while pending:
 progress=False
 for name in list(pending):
  if not (base/f"{name}.lean").exists():continue
  dependencies=imports(name)
  if not all(ready(x) for x in dependencies):continue
  source=base/f"{name}.lean";digest=hashlib.sha256(source.read_bytes()+(base/"Composition.lean").read_bytes()).hexdigest();marker=state/f"{name}.json";prior=json.loads(marker.read_text()) if marker.exists() else {}
  if prior.get("sha256")==digest and prior.get("returncode")==0 and (out/f"{name}.olean").exists():
   print(f"CACHED {name}",flush=True);pending.remove(name);completed+=1;progress=True;continue
  started=time.monotonic()
  with (work/f"aggregate-{name}.log").open("w") as stdout,(work/f"aggregate-{name}.time").open("w") as stderr:
   with (work/"aggregate-admission.lock").open("a") as admission:
    fcntl.flock(admission,fcntl.LOCK_EX)
    result=subprocess.run(["/usr/bin/time","-v","timeout","--kill-after=5s",str(a.seconds),"taskset","-c",a.cpus,"lake","env","lean","-R","submission","-o",str(out/f"{name}.olean"),str(source.relative_to(root))],cwd=root,stdout=stdout,stderr=stderr)
  record={"module":name,"sha256":digest,"returncode":result.returncode,"seconds":time.monotonic()-started};marker.write_text(json.dumps(record,indent=2)+"\n")
  print(f"CHECKED {name}: exit{result.returncode} {record['seconds']:.2f}s",flush=True)
  pending.remove(name);progress=True
  if result.returncode:failed.append(name)
  else:completed+=1
 print(f"STATUS checked={completed} failed={len(failed)} waiting={len(pending)}",flush=True)
 if pending and not progress:time.sleep(15)
print(f"COMPLETE {completed}/{len(names)}; failed={failed}",flush=True)
raise SystemExit(bool(failed))

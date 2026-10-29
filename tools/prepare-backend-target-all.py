#!/usr/bin/env python3
"""Resumable four-worker target certificate queue; native proposals need origin bridges."""
import argparse,concurrent.futures,csv,hashlib,json,os,subprocess,time
from pathlib import Path
p=argparse.ArgumentParser(description=__doc__)
p.add_argument("--generate",action="store_true")
p.add_argument("--generate-only",action="store_true")
p.add_argument("--labels",nargs="*",type=int)
p.add_argument("--end-label",type=int)
p.add_argument("--workers",type=int,default=16,choices=range(1,31))
p.add_argument("--seconds",type=int,default=180)
p.add_argument("--generation-seconds",type=int,default=900)
p.add_argument("--bridges-only",action="store_true",help="Resume origin bridges without repeating target certificates")
p.add_argument("--bridges",action="store_true",help="Check available Encoded origins too; skip origins not yet built")
a=p.parse_args();root=Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages/target-checks"
work.mkdir(parents=True,exist_ok=True)
labels=a.labels or [int(row[0]) for row in csv.reader((root/"tools/target-encoding/Positions0.csv").open())]
if a.end_label is not None:labels=[label for label in labels if label<=a.end_label]
state=work/"queue-state";state.mkdir(exist_ok=True)
def command(name,args,seconds):
 started=time.monotonic()
 with (work/f"{name}.log").open("w") as out,(work/f"{name}.time").open("w") as err:
  r=subprocess.run(["/usr/bin/time","-v","timeout","--kill-after=5s",str(seconds),*args],cwd=root,stdout=out,stderr=err)
 if r.returncode:raise RuntimeError(f"{name}:exit{r.returncode}")
 return time.monotonic()-started
if a.generate or a.generate_only:
 output=root/".lake/build/lib/lean/Tools/GenBackendTargetStages.olean";output.parent.mkdir(parents=True,exist_ok=True)
 command("generator-all-build",["lake","env","lean","-o",str(output),"Tools/GenBackendTargetStages.lean"],a.seconds)
 command("generate-all",["lake","env","lean","Tools/InitialSubmissionGenerators/BackendStages/TargetChecks/GenerateAll.lean"],a.generation_seconds)
 if a.generate_only:raise SystemExit(0)
def check(label):
 started=time.monotonic();base=root/"submission/InitECandidate/Proofs/BackendStages/TargetChecks"
 names=[f"Initial{label}"]+[f"{kind}{phase}_{label}" for phase in [0,1] for kind in ['Data','Labels','Encode','Phase']]
 files=[base/f"{name}.lean" for name in names]
 dependencies=[root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean" for name in ["TargetLabels0","TargetLabels1","TargetFfis"]]
 digest=hashlib.sha256(b"".join(f.read_bytes() for f in files+dependencies)).hexdigest()
 marker=state/f"{label}.json"
 prior=json.loads(marker.read_text()) if marker.exists() else {}
 output_root=root/".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/TargetChecks";output_root.mkdir(parents=True,exist_ok=True)
 cached=prior.get("sha256")==digest and prior.get("returncode")==0 and all((output_root/f"{name}.olean").exists() for name in names)
 if a.bridges_only and not cached:
  print(f"FAILED {label}: target certificates must pass before bridges-only",flush=True);return False
 if cached and not (a.bridges or a.bridges_only):
  print(f"CACHED {label}",flush=True);return True
 try:
  for name in ([] if cached else names):
   command(f"all-{name}",["lake","env","lean","-R","submission","-o",str(output_root/f"{name}.olean"),str((base/f"{name}.lean").relative_to(root))],a.seconds)
  origin=bool(prior.get("origin_bridge_checked")) if cached else False
  if (a.bridges or a.bridges_only) and not origin and (root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/Encoded{label}.olean").exists():
   name=f"InitialBridge{label}"
   command(f"all-{name}",["lake","env","lean","-R","submission","-o",str(output_root/f"{name}.olean"),str((base/f"{name}.lean").relative_to(root))],a.seconds);origin=True
  result={"label":label,"sha256":digest,"returncode":0,"seconds":time.monotonic()-started,"origin_bridge_checked":origin}
  print(f"CHECKED {label}: {result['seconds']:.2f}s; origin={origin}",flush=True)
 except Exception as e:
  result={"label":label,"sha256":digest,"returncode":1,"seconds":time.monotonic()-started,"error":str(e)}
  print(f"FAILED {label}: {e}",flush=True)
 marker.write_text(json.dumps(result,indent=2)+"\n")
 return result['returncode']==0
with concurrent.futures.ThreadPoolExecutor(max_workers=a.workers) as pool:
 results=list(pool.map(check,labels))
print(f"COMPLETE {sum(results)}/{len(labels)} target section certificates",flush=True)
raise SystemExit(0 if all(results) else 1)

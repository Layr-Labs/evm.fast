#!/usr/bin/env python3
"""Generate/check per-function lower Stack passes, independently of aggregate proofs."""
from guest_layout import LAST_LABEL, STOP_LABEL
import argparse, concurrent.futures, pathlib, subprocess, json, time, os
parser=argparse.ArgumentParser()
parser.add_argument("stage", choices=["Alloc", "Removed", "Named"])
parser.add_argument("labels", nargs="*", type=int)
parser.add_argument("--all", action="store_true")
parser.add_argument("--start-label", type=int, default=64)
parser.add_argument("--check", action="store_true")
parser.add_argument("--workers", type=int, default=2)
args=parser.parse_args()
root=pathlib.Path(__file__).resolve().parents[1]
work=root/"work/lean-perf/backend-stages"
labels=list(range(args.start_label,STOP_LABEL)) if args.all else args.labels
prefix=["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py")]
env=dict(os.environ,LAKE_ARTIFACT_CACHE="false")
def check(n):
 name=f"{args.stage}{n}"
 started=time.monotonic()
 result=subprocess.run(["rtk","proxy","/usr/bin/time","-v","-o",str(work/f"{name}.timing.log")]+prefix[2:]+["-R","submission","-o",str(root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"),str(root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean")],cwd=root,env=env,text=True,capture_output=True)
 seconds=time.monotonic()-started
 (work/f"{name}.check.log").write_text(result.stdout+result.stderr)
 (work/f"{name}.check.json").write_text(json.dumps(dict(label=n,returncode=result.returncode,seconds=seconds)))
 print(f"CHECK {name}: {result.returncode} {seconds:.2f}s",flush=True)
 return n,result.returncode
failures=[]
for start in range(0,len(labels),16):
 batch=labels[start:start+16]
 previous={"Alloc":"Raw", "Removed":"Alloc", "Named":"Removed"}[args.stage]
 for n in batch:
  source=root/f"submission/InitECandidate/Proofs/BackendStages/{previous}{n}.lean"
  output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{previous}{n}.olean"
  cert=work/f"{previous}{n}.check.json"
  baseline=root/"submission/InitECandidate/Proofs/BackendStages/RawInfoData.lean"
  while not (source.exists() and output.exists() and cert.exists() and
             source.stat().st_mtime_ns >= baseline.stat().st_mtime_ns and
             output.stat().st_mtime_ns >= source.stat().st_mtime_ns and
             cert.stat().st_mtime_ns >= output.stat().st_mtime_ns and
             json.loads(cert.read_text()).get("returncode")==0):
   time.sleep(1)
 imports="import Tools.GenBackendStages\n"+"".join(f"import InitECandidate.Proofs.BackendStages.{previous}{n}\n" for n in batch)
 calls=[]
 for n in batch:
  if args.stage=="Alloc":
   expression=f"StackAlloc.progComp ({n}, raw{n})"
  elif args.stage=="Removed":
   expression=f"StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc{n}"
  else:
   expression=f"StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed{n}"
  calls.append(f'  liftM (InitE.BackendGenerator.generateLowerFunction env {n} "{args.stage}" "import InitECandidate.Proofs.BackendStages.{previous}{n}" "{expression}" ({expression.replace(" Alloc", " InitECandidate.Proofs.BackendStages.Alloc").replace(", raw", ", InitECandidate.Proofs.BackendStages.raw").replace(" Removed", " InitECandidate.Proofs.BackendStages.Removed")}))\n')
 runner=work/f"Generate{args.stage}{batch[0]}_{batch[-1]}.lean"
 runner.write_text(imports+"open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\nrun_meta do\n  let env ← Lean.getEnv\n"+"".join(calls))
 result=subprocess.run(prefix+[str(runner)],cwd=root,env=env,text=True,capture_output=True)
 (work/f"Generate{args.stage}{batch[0]}_{batch[-1]}.log").write_text(result.stdout+result.stderr)
 print(result.stdout+result.stderr,end="",flush=True)
 result.check_returncode()
 if args.check:
  with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:
   failures.extend(n for n,status in pool.map(check,batch) if status)
 (work/f"{args.stage}-progress.txt").write_text(f"Last label: {batch[-1]}\nFailures: {failures}\n")
print(f"Failures: {failures}")
raise SystemExit(bool(failures))

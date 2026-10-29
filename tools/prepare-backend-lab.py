#!/usr/bin/env python3
"""Independent exact skip-filter/initial-encoding proposals for assembly sections."""
from guest_layout import LAST_LABEL, STOP_LABEL
import argparse,pathlib,subprocess,time,json,os,concurrent.futures
parser=argparse.ArgumentParser();parser.add_argument("stage",choices=["Filtered","Encoded"]);parser.add_argument("labels",nargs="*",type=int);parser.add_argument("--all",action="store_true");parser.add_argument("--start-label",type=int,default=64);parser.add_argument("--workers",type=int,default=1);args=parser.parse_args()
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages";stage=args.stage
labels=list(range(args.start_label,STOP_LABEL)) if args.all else args.labels
previous="Section" if stage=="Filtered" else "Filtered"
prefix=["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py")];env=dict(os.environ,LAKE_ARTIFACT_CACHE="false")
def check(n):
 name=f"{stage}{n}";started=time.monotonic()
 r=subprocess.run(["rtk","proxy","/usr/bin/time","-v","-o",str(work/f"{name}.timing.log")]+prefix[2:]+["-R","submission","-o",str(root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"),str(root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean")],cwd=root,env=env,text=True,capture_output=True)
 (work/f"{name}.check.log").write_text(r.stdout+r.stderr);(work/f"{name}.check.json").write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-started)));print(f"CHECK {name}: {r.returncode} {time.monotonic()-started:.2f}s",flush=True);return n,r.returncode
failures=[]
for start in range(0,len(labels),16):
 batch=labels[start:start+16]
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
 s="import Tools.GenBackendStages\n"+"".join(f"import InitECandidate.Proofs.BackendStages.{previous}{n}\n" for n in batch)+"open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\nrun_meta do\n  let env ← Lean.getEnv\n"
 for n in batch:
  expression=f"{{ section{n} with lines := section{n}.lines.filter LabFilter.notSkip }}" if stage=="Filtered" else f"LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered{n}"
  qualified=expression.replace(f"section{n}",f"InitECandidate.Proofs.BackendStages.section{n}").replace(f" Filtered{n}",f" InitECandidate.Proofs.BackendStages.Filtered{n}")
  s+=f'  liftM (InitE.BackendGenerator.generateLabStage env {n} "{stage}" "import InitECandidate.Proofs.BackendStages.{previous}{n}" "{expression}" ({qualified}))\n'
 runner=work/f"Generate{stage}{batch[0]}_{batch[-1]}.lean";runner.write_text(s)
 r=subprocess.run(prefix+[str(runner)],cwd=root,env=env,text=True,capture_output=True);(work/f"Generate{stage}{batch[0]}_{batch[-1]}.log").write_text(r.stdout+r.stderr);print(r.stdout+r.stderr,end="",flush=True);r.check_returncode()
 with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:failures.extend(n for n,status in pool.map(check,batch) if status)
 (work/f"{stage}-progress.txt").write_text(f"Last label: {batch[-1]}\nFailures: {failures}\n")
raise SystemExit(bool(failures))

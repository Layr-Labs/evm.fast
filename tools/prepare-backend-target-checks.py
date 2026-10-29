#!/usr/bin/env python3
"""Propose and kernel-check independent target section equations, maxfourCPU0–3."""
import argparse
import concurrent.futures
import csv
from pathlib import Path
import subprocess
import time

parser=argparse.ArgumentParser(description=__doc__)
parser.add_argument("labels",nargs="+",type=int)
parser.add_argument("--phases",nargs="+",type=int,default=[0,1],choices=[0,1])
parser.add_argument("--seconds",type=int,default=180)
parser.add_argument("--prepare-only",action="store_true")
args=parser.parse_args()
if any(n>=596 for n in args.labels):parser.error("Use the corrected whole traversal for sections596..889; isolated old positions do not propagate encoding length changes")
root=Path(__file__).resolve().parents[1]
logs=root/"work/lean-perf/backend-stages/target-checks"
logs.mkdir(parents=True,exist_ok=True)
def run(name,command):
 with (logs/f"{name}.log").open("w") as log,(logs/f"{name}.time").open("w") as timing:
  result=subprocess.run(["/usr/bin/time","-v","timeout","--kill-after=5s",f"{args.seconds}s","taskset","-c","0-3",*command],cwd=root,stdout=log,stderr=timing)
 if result.returncode:raise RuntimeError(f"{name}:exit{result.returncode}; see{logs/(name+'.log')}")
def compile_module(module,name):
 relative=module.replace(".","/")
 output=root/f".lake/build/lib/lean/{relative}.olean"
 output.parent.mkdir(parents=True,exist_ok=True)
 source_root="submission" if module.startswith("InitECandidate.") else "."
 run(name,["lake","env","lean","-R",source_root,"-o",str(output),str(Path(source_root)/(relative+".lean"))])
compile_module("Tools.GenBackendTargetStages","generator-build")
compile_module("InitECandidate.Proofs.BackendStages.TargetFfis","ffi-data")
for phase in sorted(set(args.phases)):
 started=time.monotonic()
 compile_module(f"InitECandidate.Proofs.BackendStages.TargetLabels{phase}",f"labels{phase}-data")
 positions={int(row[0]):(int(row[1]),int(row[2])) for row in csv.reader((root/f"tools/target-encoding/Positions{phase}.csv").open())}
 for label in args.labels:
  position,_=positions[label]
  if phase==0:compile_module(f"InitECandidate.Proofs.BackendStages.TargetChecks.Initial{label}",f"initial-{label}")
  previous=f"InitECandidate.Proofs.BackendStages.TargetChecks.Initial{label}" if phase==0 else f"InitECandidate.Proofs.BackendStages.TargetChecks.Data{phase-1}_{label}"
  expression=f"InitECandidate.Proofs.BackendStages.TargetChecks.Initial{label}" if phase==0 else f"InitECandidate.Proofs.BackendStages.TargetChecks.Reencode{phase-1}_{label}"
  driver=root/f"Tools/InitialSubmissionGenerators/BackendStages/TargetChecks/Generate{phase}_{label}.lean"
  driver.write_text(f"import Tools.GenBackendTargetStages\nimport {previous}\nimport InitECandidate.Proofs.BackendStages.TargetLabels{phase}\nimport InitECandidate.Proofs.BackendStages.TargetFfis\nset_option autoImplicit false\nrun_elab do\n  let env ← Lean.getEnv\n  liftM <| InitE.BackendTargetGenerator.prepare env {phase} {label} {position} InitECandidate.Proofs.BackendStages.Target.labels{phase} InitECandidate.Proofs.BackendStages.Target.ffis {expression}\n")
  run(f"generate{phase}-{label}",["lake","env","lean",str(driver.relative_to(root))])
  compile_module(f"InitECandidate.Proofs.BackendStages.TargetChecks.Data{phase}_{label}",f"data{phase}-{label}")
 if args.prepare_only:
  print(f"Phase{phase}:candidate data ready",flush=True)
  continue
 def check(item):
  kind,label=item
  compile_module(f"InitECandidate.Proofs.BackendStages.TargetChecks.{kind}{phase}_{label}",f"{kind.lower()}{phase}-{label}")
  print(f"Phase{phase}/{label}:{kind} certified",flush=True)
 with concurrent.futures.ThreadPoolExecutor(max_workers=4) as pool:
  list(pool.map(check,[(kind,label) for label in args.labels for kind in ['Labels','Encode']]))
 for label in args.labels:
  compile_module(f"InitECandidate.Proofs.BackendStages.TargetChecks.Phase{phase}_{label}",f"phase{phase}-{label}")
 print(f"Phase{phase}:all requested exact equations certified; wall{time.monotonic()-started:.2f}s",flush=True)

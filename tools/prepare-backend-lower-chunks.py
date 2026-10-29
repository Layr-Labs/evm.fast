#!/usr/bin/env python3
"""Compose checked local lower-pass equations without compiler reduction."""
from guest_layout import LAST_LABEL, STOP_LABEL
import argparse, pathlib, subprocess, time, json, os
parser=argparse.ArgumentParser();parser.add_argument("stage",choices=["Alloc","Removed","Named"]);parser.add_argument("--start-label",type=int,default=64);args=parser.parse_args()
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
env=dict(os.environ,LAKE_ARTIFACT_CACHE="false")
previous={"Alloc":"Raw","Removed":"Alloc","Named":"Removed"}[args.stage]
for first in range(args.start_label,STOP_LABEL,16):
 last=min(first+15,LAST_LABEL);ns=range(first,last+1);name=f"{args.stage}Chunk{first}_{last}"
 for n in ns:
  source=root/f"submission/InitECandidate/Proofs/BackendStages/{args.stage}{n}.lean"
  output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{args.stage}{n}.olean"
  cert=work/f"{args.stage}{n}.check.json"
  baseline=root/"submission/InitECandidate/Proofs/BackendStages/RawInfoData.lean"
  while not (source.exists() and output.exists() and cert.exists() and
             source.stat().st_mtime_ns >= baseline.stat().st_mtime_ns and
             output.stat().st_mtime_ns >= source.stat().st_mtime_ns and
             cert.stat().st_mtime_ns >= output.stat().st_mtime_ns and
             json.loads(cert.read_text()).get("returncode")==0):
   time.sleep(1)
 prevchunk=f"{previous}Chunk{first}_{last}"
 prevsource=root/f"submission/InitECandidate/Proofs/BackendStages/{prevchunk}.lean"
 prevoutput=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{prevchunk}.olean"
 prevcert=work/f"{prevchunk}.check.json"
 while not (prevsource.exists() and prevoutput.exists() and prevcert.exists() and
            prevsource.stat().st_mtime_ns >= baseline.stat().st_mtime_ns and
            prevoutput.stat().st_mtime_ns >= prevsource.stat().st_mtime_ns and
            prevcert.stat().st_mtime_ns >= prevoutput.stat().st_mtime_ns and
            json.loads(prevcert.read_text()).get("returncode")==0):
  time.sleep(1)
 s=f"import InitECandidate.Proofs.BackendStages.{prevchunk}\n"+"".join(f"import InitECandidate.Proofs.BackendStages.{args.stage}{n}\n" for n in ns)
 s+="set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nopen Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\nnamespace InitECandidate.Proofs.BackendStages."+name+"\n"
 s+="def bodies : List (Nat × StackLang.HolProg 64) := ["+", ".join(f"{args.stage}{n}" for n in ns)+"]\n"
 op={"Alloc":"StackAlloc.progComp","Removed":"StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))","Named":"StackNames.progCompEntryHOL RiscVConfig.riscvNames"}[args.stage]
 s+=f"theorem compiled_eq : {prevchunk}.bodies.map ({op}) = bodies := by\n  change ["+", ".join(f"{op} ({n}, raw{n})" if args.stage=="Alloc" else f"{op} {previous}{n}" for n in ns)+"] = bodies\n"
 s+="  rw ["+", ".join(f"{args.stage}{n}_eq" for n in ns)+"]\n  rfl\n#print axioms compiled_eq\nend InitECandidate.Proofs.BackendStages."+name+"\n"
 source=root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean";source.write_text(s);started=time.monotonic()
 result=subprocess.run(["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py"),"-o",str(root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"),str(source)],cwd=root,env=env,text=True,capture_output=True)
 (work/f"{name}.check.log").write_text(result.stdout+result.stderr)
 (work/f"{name}.check.json").write_text(json.dumps(dict(returncode=result.returncode,seconds=time.monotonic()-started)))
 print(f"{name}: {result.returncode}",flush=True);result.check_returncode()

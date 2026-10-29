#!/usr/bin/env python3
"""Compose complete lower Stack stages from exact chunks and inserted stubs."""
from guest_layout import LAST_LABEL, STOP_LABEL
import argparse,pathlib,time,subprocess,json,os
parser=argparse.ArgumentParser();parser.add_argument("stage",choices=["Alloc","Removed","Named"]);args=parser.parse_args()
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages";stage=args.stage
previous={"Alloc":"Raw","Removed":"Alloc","Named":"Removed"}[stage]
chunks=[(a,min(a+15,LAST_LABEL)) for a in range(64,STOP_LABEL,16)]
baseline=root/"submission/InitECandidate/Proofs/BackendStages/RawInfoData.lean"
for a,b in chunks:
 name=f"{stage}Chunk{a}_{b}"
 source=root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean"
 output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"
 cert=work/f"{name}.check.json"
 while not (source.exists() and output.exists() and cert.exists() and source.stat().st_mtime_ns>=baseline.stat().st_mtime_ns and output.stat().st_mtime_ns>=source.stat().st_mtime_ns and cert.stat().st_mtime_ns>=output.stat().st_mtime_ns and json.loads(cert.read_text()).get("returncode")==0):time.sleep(1)
for module in [previous,stage+"Stubs"]:
 output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{module}.olean"
 if module.endswith("Stubs"):
  while not output.exists():time.sleep(1)
 else:
  source=root/f"submission/InitECandidate/Proofs/BackendStages/{module}.lean"
  cert=work/f"{module}.check.json"
  while not (source.exists() and output.exists() and cert.exists() and source.stat().st_mtime_ns>=baseline.stat().st_mtime_ns and output.stat().st_mtime_ns>=source.stat().st_mtime_ns and cert.stat().st_mtime_ns>=output.stat().st_mtime_ns and json.loads(cert.read_text()).get("returncode")==0):time.sleep(1)
s=f"import InitECandidate.Proofs.BackendStages.{previous}\nimport InitECandidate.Proofs.BackendStages.{stage}Stubs\n"+"".join(f"import InitECandidate.Proofs.BackendStages.{stage}Chunk{a}_{b}\n" for a,b in chunks)
s+="set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nopen Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\nnamespace InitECandidate.Proofs.BackendStages."+stage+"\n"
op={"Alloc":"StackAlloc.progComp","Removed":"StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))","Named":"StackNames.progCompEntryHOL RiscVConfig.riscvNames"}[stage]
s+=f"def bodies{len(chunks)} : List (Nat × StackLang.HolProg 64) := []\ntheorem bodies{len(chunks)}_eq : {previous}.bodies{len(chunks)}.map ({op}) = bodies{len(chunks)} := by rfl\n"
for i,(a,b) in reversed(list(enumerate(chunks))):
 s+=f"def bodies{i} := {stage}Chunk{a}_{b}.bodies ++ bodies{i+1}\n"
 s+=f"theorem bodies{i}_eq : {previous}.bodies{i}.map ({op}) = bodies{i} := by\n  unfold {previous}.bodies{i} bodies{i}\n  rw [List.map_append, {stage}Chunk{a}_{b}.compiled_eq, bodies{i+1}_eq]\n"
s+=f"def stack := {stage}Stubs ++ bodies0\n"
if stage=="Alloc":
 expr="StackAlloc.compile RiscVConfig.pancakeRiscVBackendConfig.dataConf Raw.stack"
 proof="  unfold StackAlloc.compile Raw.stack stack\n  rw [List.map_append, bodies0_eq, ← List.append_assoc, AllocStubs_eq]\n"
elif stage=="Removed":
 expr="StackRemove.compileHOL false riscvConfig.addrOffset (StackToLab.isGenGc RiscVConfig.pancakeRiscVBackendConfig.dataConf.gcKind) (2 * DataToWord.maxHeapLimit 64 RiscVConfig.pancakeRiscVBackendConfig.dataConf - 1) (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) BvlToBvi.initGlobalsLocation Alloc.stack"
 proof="  unfold StackRemove.compileHOL Alloc.stack stack\n  rw [List.map_append, bodies0_eq, ← List.append_assoc, RemovedStubs_eq]\n"
else:
 expr="StackNames.compileHOL RiscVConfig.riscvNames Removed.stack"
 proof="  unfold StackNames.compileHOL Removed.stack stack\n  rw [List.map_append, NamedStubs_eq, bodies0_eq]\n"
s+=f"theorem compile_eq : {expr} = stack := by\n"+proof+"#print axioms compile_eq\nend InitECandidate.Proofs.BackendStages."+stage+"\n"
source=root/f"submission/InitECandidate/Proofs/BackendStages/{stage}.lean";source.write_text(s);started=time.monotonic()
r=subprocess.run(["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py"),"-o",str(root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{stage}.olean"),str(source)],cwd=root,env=dict(os.environ,LAKE_ARTIFACT_CACHE="false"),text=True,capture_output=True)
(work/f"{stage}.check.log").write_text(r.stdout+r.stderr);(work/f"{stage}.check.json").write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-started)));print(r.stdout+r.stderr);r.check_returncode()

#!/usr/bin/env python3
"""Compose the complete exact StackToLab result from checked stage equations."""
from guest_layout import LAST_LABEL, STOP_LABEL
import pathlib,time,subprocess,json,os
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
chunks=[(a,min(a+15,LAST_LABEL)) for a in range(64,STOP_LABEL,16)]
baseline=root/"submission/InitECandidate/Proofs/BackendStages/RawInfoData.lean"
for a,b in chunks:
 name=f"SectionChunk{a}_{b}"
 source=root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean"
 output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"
 cert=work/f"{name}.check.json"
 while not (source.exists() and output.exists() and cert.exists() and source.stat().st_mtime_ns>=baseline.stat().st_mtime_ns and output.stat().st_mtime_ns>=source.stat().st_mtime_ns and cert.stat().st_mtime_ns>=output.stat().st_mtime_ns and json.loads(cert.read_text()).get("returncode")==0):time.sleep(1)
for module in ["Named","SectionStubs"]:
 output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{module}.olean"
 if module=="Named":
  source=root/"submission/InitECandidate/Proofs/BackendStages/Named.lean"
  cert=work/"Named.check.json"
  while not (output.exists() and source.exists() and cert.exists() and source.stat().st_mtime_ns>=baseline.stat().st_mtime_ns and output.stat().st_mtime_ns>=source.stat().st_mtime_ns and cert.stat().st_mtime_ns>=output.stat().st_mtime_ns and json.loads(cert.read_text()).get("returncode")==0):time.sleep(1)
 else:
  while not output.exists():time.sleep(1)
s="import InitECandidate.Proofs.BackendStages.Named\nimport InitECandidate.Proofs.BackendStages.SectionStubs\n"+"".join(f"import InitECandidate.Proofs.BackendStages.SectionChunk{a}_{b}\n" for a,b in chunks)
s+="set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nopen Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\nnamespace InitECandidate.Proofs.BackendStages.Sections\n"
s+=f"def sections{len(chunks)} : LabSem.LabProgHOL 64 := []\ntheorem sections{len(chunks)}_eq : Named.bodies{len(chunks)}.map StackToLab.progToSectionHOL = sections{len(chunks)} := by rfl\n"
for i,(a,b) in reversed(list(enumerate(chunks))):
 s+=f"def sections{i} := SectionChunk{a}_{b}.sections ++ sections{i+1}\n"
 s+=f"theorem sections{i}_eq : Named.bodies{i}.map StackToLab.progToSectionHOL = sections{i} := by\n  unfold Named.bodies{i} sections{i}\n  rw [List.map_append, SectionChunk{a}_{b}.compiled_eq, sections{i+1}_eq]\n"
s+="def program := SectionStubs ++ sections0\ntheorem named_eq : Named.stack.map StackToLab.progToSectionHOL = program := by\n  unfold Named.stack program\n  rw [List.map_append, SectionStubs_eq, sections0_eq]\n"
s+="theorem compile_eq : StackToLab.compile RiscVConfig.pancakeRiscVBackendConfig.stackConf RiscVConfig.pancakeRiscVBackendConfig.dataConf (2 * DataToWord.maxHeapLimit 64 RiscVConfig.pancakeRiscVBackendConfig.dataConf - 1) (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) riscvConfig.addrOffset Native.stack = program := by\n  unfold StackToLab.compile\n  dsimp only\n  rw [Raw.compile_eq, Alloc.compile_eq]\n  change (StackNames.compileHOL RiscVConfig.riscvNames (StackRemove.compileHOL false riscvConfig.addrOffset (StackToLab.isGenGc RiscVConfig.pancakeRiscVBackendConfig.dataConf.gcKind) (2 * DataToWord.maxHeapLimit 64 RiscVConfig.pancakeRiscVBackendConfig.dataConf - 1) (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) BvlToBvi.initGlobalsLocation Alloc.stack)).map StackToLab.progToSectionHOL = program\n  rw [Removed.compile_eq, Named.compile_eq, named_eq]\n#print axioms compile_eq\nend InitECandidate.Proofs.BackendStages.Sections\n"
source=root/"submission/InitECandidate/Proofs/BackendStages/Sections.lean";source.write_text(s);started=time.monotonic()
r=subprocess.run(["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py"),"-o",str(root/".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/Sections.olean"),str(source)],cwd=root,env=dict(os.environ,LAKE_ARTIFACT_CACHE="false"),text=True,capture_output=True)
(work/"Sections.check.log").write_text(r.stdout+r.stderr);(work/"Sections.check.json").write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-started)));print(r.stdout+r.stderr);r.check_returncode()

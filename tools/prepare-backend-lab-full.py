#!/usr/bin/env python3
"""Compose all independent section filtering or initial encodings."""
from guest_layout import LAST_LABEL, STOP_LABEL
import pathlib,time,json,subprocess,sys
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
stage=sys.argv[1];assert stage in ["Filtered","Encoded"]
chunks=[(a,min(a+15,LAST_LABEL)) for a in range(64,STOP_LABEL,16)]
baseline=root/"submission/InitECandidate/Proofs/BackendStages/RawInfoData.lean"
for suffix in ["Stubs"]+[f"Chunk{a}_{b}" for a,b in chunks]:
 p=work/f"{stage}{suffix}.check.json"
 source=root/f"submission/InitECandidate/Proofs/BackendStages/{stage}{suffix}.lean"
 output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{stage}{suffix}.olean"
 while not (source.exists() and output.exists() and p.exists() and (suffix=="Stubs" or source.stat().st_mtime_ns>=baseline.stat().st_mtime_ns and output.stat().st_mtime_ns>=source.stat().st_mtime_ns and p.stat().st_mtime_ns>=output.stat().st_mtime_ns) and json.loads(p.read_text()).get("returncode")==0):time.sleep(3)
prev="Sections" if stage=="Filtered" else "Filtered"
prior_source=root/f"submission/InitECandidate/Proofs/BackendStages/{prev}.lean"
prior_out=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{prev}.olean"
prior_cert=work/f"{prev}.check.json"
while not (prior_source.exists() and prior_out.exists() and prior_cert.exists() and prior_source.stat().st_mtime_ns>=baseline.stat().st_mtime_ns and prior_out.stat().st_mtime_ns>=prior_source.stat().st_mtime_ns and prior_cert.stat().st_mtime_ns>=prior_out.stat().st_mtime_ns and json.loads(prior_cert.read_text()).get("returncode")==0):time.sleep(3)
fun="(fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip })" if stage=="Filtered" else "(LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length)"
priorName=lambda i: f"Sections.sections{i}" if stage=="Filtered" else f"Filtered.sections{i}"
s=f"import InitECandidate.Proofs.BackendStages.{prev}\nimport InitECandidate.Proofs.BackendComputation\nimport InitECandidate.Proofs.BackendStages.{stage}Stubs\n"+"".join(f"import InitECandidate.Proofs.BackendStages.{stage}Chunk{a}_{b}\n" for a,b in chunks)
s+="set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nopen Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\nnamespace InitECandidate.Proofs.BackendStages."+stage+"\n"
s+=f"def sections{len(chunks)} : LabSem.LabProgHOL 64 := []\n"+f"theorem sections{len(chunks)}_eq : {priorName(len(chunks))}.map {fun} = sections{len(chunks)} := by rfl\n"
for i,(a,b) in reversed(list(enumerate(chunks))):
 s+=f"def sections{i} := {stage}Chunk{a}_{b}.sections ++ sections{i+1}\n"
 s+=f"theorem sections{i}_eq : {priorName(i)}.map {fun} = sections{i} := by\n  unfold {priorName(i)} sections{i}\n  rw [List.map_append, {stage}Chunk{a}_{b}.compiled_eq, sections{i+1}_eq]\n"
s+=f"def program := {stage}Stubs.sections ++ sections0\n"
s+=f"theorem map_eq : {prev}.program.map {fun} = program := by\n  unfold {prev}.program program\n  rw [List.map_append, {stage}Stubs.compiled_eq, sections0_eq]\n"
statement="LabFilter.filterSkip Sections.program = program" if stage=="Filtered" else "LabToTarget.encSecList riscvConfig.encode Filtered.program = program"
lemma="InitECandidate.Proofs.BackendComputation.filterSkip_eq_map" if stage=="Filtered" else "InitECandidate.Proofs.BackendComputation.encSecList_eq_map"
s+=f"theorem compile_eq : {statement} := by\n  rw [{lemma}, map_eq]\n#print axioms compile_eq\nend InitECandidate.Proofs.BackendStages.{stage}\n"
source=root/f"submission/InitECandidate/Proofs/BackendStages/{stage}.lean";source.write_text(s);start=time.monotonic()
r=subprocess.run(["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py"),"-o",str(root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{stage}.olean"),str(source)],cwd=root,text=True,capture_output=True)
(work/f"{stage}.check.log").write_text(r.stdout+r.stderr);(work/f"{stage}.check.json").write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-start)));print(r.stdout+r.stderr);r.check_returncode()

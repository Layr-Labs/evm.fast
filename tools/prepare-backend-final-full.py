#!/usr/bin/env python3
"""Assemble final target stages using bounded per-section certificates."""
from guest_layout import LAST_LABEL, STOP_LABEL
import pathlib,json,time,re,subprocess
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
groups=[([0,1,2,4,5,6],"Stubs")]+[(list(range(a,min(a+16,STOP_LABEL))),f"{a}_{min(a+15,LAST_LABEL)}") for a in range(64,STOP_LABEL,16)]
for ids,suffix in groups:
 source=root/f"submission/InitECandidate/Proofs/BackendStages/FinalChunk{suffix}.lean"
 output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/FinalChunk{suffix}.olean"
 p=work/f"FinalChunk{suffix}.check.json"
 while not (source.exists() and output.exists() and p.exists() and
            all((root/f"submission/InitECandidate/Proofs/BackendStages/Padded{n}.lean").exists() for n in ids) and
            source.stat().st_mtime_ns>=max((root/f"submission/InitECandidate/Proofs/BackendStages/Padded{n}.lean").stat().st_mtime_ns for n in ids) and
            output.stat().st_mtime_ns>=source.stat().st_mtime_ns and
            p.stat().st_mtime_ns>=output.stat().st_mtime_ns):time.sleep(5)
 if json.loads(p.read_text())["returncode"]:raise RuntimeError(str(p))
positions=[]
for ids,_ in groups:
 src=(root/f"submission/InitECandidate/Proofs/BackendStages/Alignment{ids[0]}.lean").read_text();positions.append(int(re.search(r"linesUpdLabLen (\d+)",src).group(1)))
last=(root/f"submission/InitECandidate/Proofs/BackendStages/Alignment{groups[-1][0][-1]}.lean").read_text();positions.append(int(re.search(r"Alignment\d+\.lines, (\d+)\)",last).group(1)))
s="import InitECandidate.Proofs.BackendStages.Composition\n"+"".join(f"import InitECandidate.Proofs.BackendStages.FinalChunk{suffix}\n" for _,suffix in groups)
s+="set_option autoImplicit false\nset_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nopen Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\nnamespace InitECandidate.Proofs.BackendStages.Final\n"
count=len(groups)
for label in ["input","aligned","final","padded"]:s+=f"def {label}{count} : LabSem.LabProgHOL 64 := []\n"
s+=f"theorem alignment{count}_eq : LabToTarget.updLabLen {positions[-1]} input{count} = aligned{count} := by rfl\n"
s+=f"theorem rewrite{count}_eq : LabToTarget.encSecsAgain {positions[-1]} Target.labelsFinal Target.ffis riscvConfig.encode aligned{count} = (final{count}, true) := by rfl\n"
s+=f"theorem padding{count}_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final{count} = padded{count} := by rfl\n"
s+=f"theorem valid{count} : LabToTarget.allEncOkLight riscvConfig padded{count} = true := by rfl\n"
for i,(_,suffix) in reversed(list(enumerate(groups))):
 for label in ["input","aligned","final","padded"]:s+=f"def {label}{i} := FinalChunk{suffix}.{label} ++ {label}{i+1}\n"
 s+=f"theorem alignment{i}_eq : LabToTarget.updLabLen {positions[i]} input{i} = aligned{i} := FinalChunk{suffix}.alignment_eq _ _ alignment{i+1}_eq\n"
 s+=f"theorem rewrite{i}_eq : LabToTarget.encSecsAgain {positions[i]} Target.labelsFinal Target.ffis riscvConfig.encode aligned{i} = (final{i}, true) := FinalChunk{suffix}.rewrite_eq _ _ rewrite{i+1}_eq\n"
 s+=f"theorem padding{i}_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final{i} = padded{i} := by\n  unfold final{i} padded{i}\n  rw [Composition.padCode_append, FinalChunk{suffix}.padding_eq, padding{i+1}_eq]\n"
 s+=f"theorem valid{i} : LabToTarget.allEncOkLight riscvConfig padded{i} = true := Composition.valid_append _ _ _ FinalChunk{suffix}.valid valid{i+1}\n"
s+="#print axioms alignment0_eq\n#print axioms rewrite0_eq\n#print axioms padding0_eq\n#print axioms valid0\nend InitECandidate.Proofs.BackendStages.Final\nnamespace InitECandidate.Proofs.BackendStages.Alignment\ndef program := Final.aligned0\nend InitECandidate.Proofs.BackendStages.Alignment\n"
source=root/"submission/InitECandidate/Proofs/BackendStages/Final.lean";source.write_text(s);start=time.monotonic()
r=subprocess.run(["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py"),"-o",str(root/".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/Final.olean"),str(source)],cwd=root,text=True,capture_output=True)
(work/"Final.check.log").write_text(r.stdout+r.stderr);(work/"Final.check.json").write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-start)));print(r.stdout+r.stderr);r.check_returncode()

#!/usr/bin/env python3
"""Compose independently checked final target section equations."""
from guest_layout import LAST_LABEL, STOP_LABEL
import pathlib,time,json,subprocess,re
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
chunks=[([0,1,2,4,5,6],"Stubs")]+[(list(range(a,min(a+16,STOP_LABEL))),f"{a}_{min(a+15,LAST_LABEL)}") for a in range(64,STOP_LABEL,16)]
for ids,suffix in chunks:
 name="FinalChunk"+suffix;cert=work/f"{name}.check.json"
 for n in ids:
  for stage in ["Alignment","FinalReencode","Padded"]:
   source=root/f"submission/InitECandidate/Proofs/BackendStages/{stage}{n}.lean"
   output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{stage}{n}.olean"
   dep=work/f"{stage}{n}.check.json"
   while not (source.exists() and output.exists() and dep.exists() and
              output.stat().st_mtime_ns>=source.stat().st_mtime_ns and
              dep.stat().st_mtime_ns>=output.stat().st_mtime_ns):time.sleep(3)
   if json.loads(dep.read_text())["returncode"]:raise RuntimeError(str(dep))
 source=root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean"
 output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"
 if (cert.exists() and source.exists() and output.exists() and
     json.loads(cert.read_text()).get("returncode")==0 and
     source.stat().st_mtime_ns>=max((root/f"submission/InitECandidate/Proofs/BackendStages/Padded{n}.lean").stat().st_mtime_ns for n in ids) and
     output.stat().st_mtime_ns>=source.stat().st_mtime_ns and cert.stat().st_mtime_ns>=output.stat().st_mtime_ns):continue
 pos=[];end=[]
 for n in ids:
  src=(root/f"submission/InitECandidate/Proofs/BackendStages/Alignment{n}.lean").read_text()
  pos.append(int(re.search(r"linesUpdLabLen (\d+)",src).group(1)));end.append(int(re.search(r"Alignment\d+\.lines, (\d+)\)",src).group(1)))
 s="import InitECandidate.Proofs.BackendComputation\n"+"".join(f"import InitECandidate.Proofs.BackendStages.Padded{n}\n" for n in ids)
 s+="set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nopen Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\nnamespace InitECandidate.Proofs.BackendStages."+name+"\n"
 for label,base in [("input","TargetChecks.Reencode1_"),("aligned","Alignment"),("final","FinalReencode"),("padded","Padded")]:
  s+=f"def {label} : LabSem.LabProgHOL 64 := ["+", ".join(((base+str(n)) if label != "input" or n < 596 else "TargetChecks.Correct.Reencode1_"+str(n)) for n in ids)+"]\n"
 s+=f"theorem alignment_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.updLabLen {end[-1]} rest = output) : LabToTarget.updLabLen {pos[0]} (input ++ rest) = aligned ++ output := by\n  unfold input aligned\n  simp only [List.cons_append, List.nil_append]\n"
 for n in ids:s+=f"  apply InitECandidate.Proofs.BackendComputation.updLabLen_cons (head := Alignment{n}_eq)\n"
 s+="  exact tail\n"
 s+=f"theorem rewrite_eq (rest output : LabSem.LabProgHOL 64) (tail : LabToTarget.encSecsAgain {end[-1]} Target.labelsFinal Target.ffis riscvConfig.encode rest = (output, true)) : LabToTarget.encSecsAgain {pos[0]} Target.labelsFinal Target.ffis riscvConfig.encode (aligned ++ rest) = (final ++ output, true) := by\n  unfold aligned final\n  simp only [List.cons_append, List.nil_append]\n"
 for n in ids:s+=f"  apply InitECandidate.Proofs.BackendComputation.encSecsAgain_cons (head := FinalReencode{n}_eq)\n"
 s+="  exact tail\n"
 s+="theorem padding_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final = padded := by\n  unfold final padded\n  simp only [LabToTarget.padCode]\n  rw ["+", ".join(f"Padded{n}_eq" for n in ids)+"]\n  rfl\n"
 s+="theorem valid : LabToTarget.allEncOkLight riscvConfig padded = true := by\n  unfold padded LabToTarget.allEncOkLight\n  simp only [List.all_cons, List.all_nil, "+", ".join(f"Padded{n}_valid" for n in ids)+"]\n  rfl\n#print axioms alignment_eq\n#print axioms rewrite_eq\n#print axioms padding_eq\n#print axioms valid\nend InitECandidate.Proofs.BackendStages."+name+"\n"
 source.write_text(s);start=time.monotonic()
 r=subprocess.run(["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py"),"-o",str(output),str(source)],cwd=root,text=True,capture_output=True)
 (work/f"{name}.check.log").write_text(r.stdout+r.stderr);cert.write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-start)));print(name,r.returncode,r.stdout+r.stderr,flush=True);r.check_returncode()

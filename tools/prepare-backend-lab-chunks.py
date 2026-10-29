#!/usr/bin/env python3
"""Compose checked section-local filtering/encoding without whole literal reduction."""
from guest_layout import LAST_LABEL, STOP_LABEL
import argparse,pathlib,time,subprocess,json
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
parser=argparse.ArgumentParser();parser.add_argument("stage",choices=["Filtered","Encoded"]);parser.add_argument("--start-label",type=int,default=64);args=parser.parse_args()
stage=args.stage
chunks=([([0,1,2,4,5,6],"Stubs")] if args.start_label==64 else [])+[(list(range(a,min(a+16,STOP_LABEL))),f"Chunk{a}_{min(a+15,LAST_LABEL)}") for a in range(args.start_label,STOP_LABEL,16)]
for ids,suffix in chunks:
 name=stage+suffix;cert=work/f"{name}.check.json"
 baseline=root/"submission/InitECandidate/Proofs/BackendStages/RawInfoData.lean"
 source=root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean"
 output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"
 fresh=lambda p: p.exists() and (suffix=="Stubs" or p.stat().st_mtime_ns>=baseline.stat().st_mtime_ns)
 if fresh(source) and output.exists() and cert.exists() and output.stat().st_mtime_ns>=source.stat().st_mtime_ns and cert.stat().st_mtime_ns>=output.stat().st_mtime_ns and json.loads(cert.read_text()).get("returncode")==0:continue
 for n in ids:
  dep=work/f"{stage}{n}.check.json"
  dep_source=root/f"submission/InitECandidate/Proofs/BackendStages/{stage}{n}.lean"
  dep_output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{stage}{n}.olean"
  while not (fresh(dep_source) and dep_output.exists() and dep.exists() and dep_output.stat().st_mtime_ns>=dep_source.stat().st_mtime_ns and dep.stat().st_mtime_ns>=dep_output.stat().st_mtime_ns and json.loads(dep.read_text()).get("returncode")==0):time.sleep(2)
 prev="Section"+suffix if stage=="Filtered" else "Filtered"+suffix
 prior=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{prev}.olean"
 prior_source=root/f"submission/InitECandidate/Proofs/BackendStages/{prev}.lean"
 prior_cert=work/f"{prev}.check.json"
 while not (fresh(prior_source) and prior.exists() and prior.stat().st_mtime_ns>=prior_source.stat().st_mtime_ns and (suffix=="Stubs" or prior_cert.exists() and prior_cert.stat().st_mtime_ns>=prior.stat().st_mtime_ns and json.loads(prior_cert.read_text()).get("returncode")==0)):time.sleep(2)
 inp="SectionStubs" if suffix=="Stubs" and stage=="Filtered" else prev+".sections"
 vals=[("section"+str(n)) if stage=="Filtered" else "Filtered"+str(n) for n in ids]
 fun="(fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip })" if stage=="Filtered" else "(LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length)"
 exprs=[("{ "+v+" with lines := "+v+".lines.filter LabFilter.notSkip }") if stage=="Filtered" else "LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length "+v for v in vals]
 s=f"import InitECandidate.Proofs.BackendStages.{prev}\n"+"".join(f"import InitECandidate.Proofs.BackendStages.{stage}{n}\n" for n in ids)
 s+="set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nopen Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target\n"
 s+=f"namespace InitECandidate.Proofs.BackendStages.{name}\ndef sections : LabSem.LabProgHOL 64 := ["+", ".join(stage+str(n) for n in ids)+"]\n"
 s+=f"theorem compiled_eq : {inp}.map {fun} = sections := by\n  change ["+", ".join(exprs)+"] = sections\n  rw ["+", ".join(stage+str(n)+"_eq" for n in ids)+"]\n  rfl\n#print axioms compiled_eq\nend InitECandidate.Proofs.BackendStages."+name+"\n"
 source.write_text(s);start=time.monotonic()
 r=subprocess.run(["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py"),"-o",str(root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"),str(source)],cwd=root,text=True,capture_output=True)
 (work/f"{name}.check.log").write_text(r.stdout+r.stderr);cert.write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-start)));print(name,r.returncode,flush=True);r.check_returncode()

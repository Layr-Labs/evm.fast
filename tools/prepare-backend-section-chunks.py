#!/usr/bin/env python3
"""Compose exact per-function Lab sections in bounded chunks."""
from guest_layout import LAST_LABEL, STOP_LABEL
import argparse,pathlib,subprocess,time,json,os
parser=argparse.ArgumentParser();parser.add_argument("--start-label",type=int,default=64);args=parser.parse_args()
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
for first in range(args.start_label,STOP_LABEL,16):
 last=min(first+15,LAST_LABEL);ns=range(first,last+1);name=f"SectionChunk{first}_{last}"
 baseline=root/"submission/InitECandidate/Proofs/BackendStages/RawInfoData.lean"
 for n in ns:
  source=root/f"submission/InitECandidate/Proofs/BackendStages/Section{n}.lean"
  output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/Section{n}.olean"
  cert=work/f"Section{n}.check.json"
  while not (source.exists() and output.exists() and cert.exists() and
             source.stat().st_mtime_ns >= baseline.stat().st_mtime_ns and
             output.stat().st_mtime_ns >= source.stat().st_mtime_ns and
             cert.stat().st_mtime_ns >= output.stat().st_mtime_ns and
             json.loads(cert.read_text()).get("returncode")==0):
   time.sleep(1)
 named=f"NamedChunk{first}_{last}"
 namedsource=root/f"submission/InitECandidate/Proofs/BackendStages/{named}.lean"
 namedoutput=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{named}.olean"
 namedcert=work/f"{named}.check.json"
 while not (namedsource.exists() and namedoutput.exists() and namedcert.exists() and
            namedsource.stat().st_mtime_ns >= baseline.stat().st_mtime_ns and
            namedoutput.stat().st_mtime_ns >= namedsource.stat().st_mtime_ns and
            namedcert.stat().st_mtime_ns >= namedoutput.stat().st_mtime_ns and
            json.loads(namedcert.read_text()).get("returncode")==0):
  time.sleep(1)
 s=f"import InitECandidate.Proofs.BackendStages.NamedChunk{first}_{last}\n"+"".join(f"import InitECandidate.Proofs.BackendStages.Section{n}\n" for n in ns)
 s+="set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nopen Flapjack Flapjack.Compiler.Backend\nnamespace InitECandidate.Proofs.BackendStages."+name+"\n"
 s+="def sections : LabSem.LabProgHOL 64 := ["+", ".join(f"section{n}" for n in ns)+"]\n"
 s+=f"theorem compiled_eq : NamedChunk{first}_{last}.bodies.map StackToLab.progToSectionHOL = sections := by\n  change ["+", ".join(f"StackToLab.progToSectionHOL Named{n}" for n in ns)+"] = sections\n"
 s+="  rw ["+", ".join(f"section{n}_eq" for n in ns)+"]\n  rfl\n#print axioms compiled_eq\nend InitECandidate.Proofs.BackendStages."+name+"\n"
 source=root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean";source.write_text(s);started=time.monotonic()
 r=subprocess.run(["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py"),"-o",str(root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"),str(source)],cwd=root,env=dict(os.environ,LAKE_ARTIFACT_CACHE="false"),text=True,capture_output=True)
 (work/f"{name}.check.log").write_text(r.stdout+r.stderr);(work/f"{name}.check.json").write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-started)));print(f"{name}: {r.returncode}",flush=True);r.check_returncode()

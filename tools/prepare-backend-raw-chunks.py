#!/usr/bin/env python3
"""Compose checked raw-call body equations in independent sixteen-function chunks."""
from guest_layout import LAST_LABEL, STOP_LABEL
import argparse, pathlib, subprocess, time, json, os
parser=argparse.ArgumentParser();parser.add_argument("--start-label",type=int,default=64);args=parser.parse_args()
root=pathlib.Path(__file__).resolve().parents[1]
work=root/"work/lean-perf/backend-stages"
env=dict(os.environ,LAKE_ARTIFACT_CACHE="false")
for first in range(args.start_label,STOP_LABEL,16):
 last=min(first+15,LAST_LABEL)
 ns=range(first,last+1)
 name=f"RawChunk{first}_{last}"
 for n in ns:
  source=root/f"submission/InitECandidate/Proofs/BackendStages/Raw{n}.lean"
  output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/Raw{n}.olean"
  cert=work/f"Raw{n}.check.json"
  info=root/"submission/InitECandidate/Proofs/BackendStages/RawInfoData.lean"
  while not (source.exists() and output.exists() and cert.exists() and
             source.stat().st_mtime_ns >= info.stat().st_mtime_ns and
             output.stat().st_mtime_ns >= source.stat().st_mtime_ns and
             cert.stat().st_mtime_ns >= output.stat().st_mtime_ns and
             json.loads(cert.read_text()).get("returncode")==0):
   time.sleep(1)
 s=f"import InitECandidate.Proofs.BackendStages.Chunk{first}_{last}\n"+"".join(f"import InitECandidate.Proofs.BackendStages.Raw{n}\n" for n in ns)
 s+="set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nopen Flapjack Flapjack.Compiler.Backend\nnamespace InitECandidate.Proofs.BackendStages."+name+"\n"
 s+="def bodies : List (Nat × StackLang.HolProg 64) := ["+", ".join(f"({n}, raw{n})" for n in ns)+"]\n"
 s+=f"theorem compiled_eq : Chunk{first}_{last}.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by\n  change ["+", ".join(f"({n}, StackRawCall.compTop RawInfo.rawInfo (function{n} (.list [])).1)" for n in ns)+"] = bodies\n"
 s+="  rw ["+", ".join(f"raw{n}_eq" for n in ns)+"]\n  rfl\n#print axioms compiled_eq\nend InitECandidate.Proofs.BackendStages."+name+"\n"
 source=root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean"
 source.write_text(s)
 started=time.monotonic()
 result=subprocess.run(["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py"),"-o",str(root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"),str(source)],cwd=root,env=env,text=True,capture_output=True)
 (work/f"{name}.check.log").write_text(result.stdout+result.stderr)
 (work/f"{name}.check.json").write_text(json.dumps(dict(returncode=result.returncode,seconds=time.monotonic()-started)))
 print(f"{name}: {result.returncode}",flush=True)
 result.check_returncode()

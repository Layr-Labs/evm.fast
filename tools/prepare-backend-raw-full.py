#!/usr/bin/env python3
"""Compose the complete checked raw-call pass without reducing function bodies."""
from guest_layout import LAST_LABEL, STOP_LABEL
import pathlib,time,subprocess,json,os
root=pathlib.Path(__file__).resolve().parents[1];work=root/"work/lean-perf/backend-stages"
chunks=[(a,min(a+15,LAST_LABEL)) for a in range(64,STOP_LABEL,16)]
baseline=root/"submission/InitECandidate/Proofs/BackendStages/RawInfoData.lean"
for a,b in chunks:
 name=f"RawChunk{a}_{b}"
 source=root/f"submission/InitECandidate/Proofs/BackendStages/{name}.lean"
 output=root/f".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/{name}.olean"
 cert=work/f"{name}.check.json"
 while not (source.exists() and output.exists() and cert.exists() and source.stat().st_mtime_ns>=baseline.stat().st_mtime_ns and output.stat().st_mtime_ns>=source.stat().st_mtime_ns and cert.stat().st_mtime_ns>=output.stat().st_mtime_ns and json.loads(cert.read_text()).get("returncode")==0):time.sleep(1)
s="import InitECandidate.Proofs.BackendStages.RawInfoFacts\nimport InitECandidate.Proofs.BackendStages.RawStubs\n"+"".join(f"import InitECandidate.Proofs.BackendStages.RawChunk{a}_{b}\n" for a,b in chunks)
s+="set_option maxRecDepth 1000000\nset_option maxHeartbeats 0\nopen Flapjack Flapjack.Compiler.Backend\nnamespace InitECandidate.Proofs.BackendStages.Raw\n"
op="(fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body))"
s+=f"def bodies{len(chunks)} : List (Nat × StackLang.HolProg 64) := []\ntheorem bodies{len(chunks)}_eq : Native.bodies{len(chunks)}.map {op} = bodies{len(chunks)} := by rfl\n"
for i,(a,b) in reversed(list(enumerate(chunks))):
 s+=f"def bodies{i} := RawChunk{a}_{b}.bodies ++ bodies{i+1}\n"
 s+=f"theorem bodies{i}_eq : Native.bodies{i}.map {op} = bodies{i} := by\n  unfold Native.bodies{i} bodies{i}\n  rw [List.map_append, RawChunk{a}_{b}.compiled_eq, bodies{i+1}_eq]\n"
s+="def stack := RawStubs ++ bodies0\ntheorem compile_eq : StackRawCall.compile Native.stack = stack := by\n  rw [RawInfo.compile_eq]\n  unfold Native.stack stack\n  simp only [List.map_cons]\n"
s+=f"  change [(raiseStubLocation, StackRawCall.compTop RawInfo.rawInfo (WordToStack.Native.raiseStubNative false (Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.regCount - (5 + Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.avoidRegs.length)))), (storeConstsStubLocation, StackRawCall.compTop RawInfo.rawInfo (WordToStack.Native.storeConstsStubNative (Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.regCount - (5 + Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.avoidRegs.length))))] ++ Native.bodies0.map {op} = RawStubs ++ bodies0\n  rw [RawStubs_eq, bodies0_eq]\n#print axioms compile_eq\nend InitECandidate.Proofs.BackendStages.Raw\n"
source=root/"submission/InitECandidate/Proofs/BackendStages/Raw.lean";source.write_text(s);started=time.monotonic()
r=subprocess.run(["rtk","proxy","python3",str(root/"tools/prepare-backend-lean.py"),"-o",str(root/".lake/build/lib/lean/InitECandidate/Proofs/BackendStages/Raw.olean"),str(source)],cwd=root,env=dict(os.environ,LAKE_ARTIFACT_CACHE="false"),text=True,capture_output=True)
(work/"Raw.check.log").write_text(r.stdout+r.stderr);(work/"Raw.check.json").write_text(json.dumps(dict(returncode=r.returncode,seconds=time.monotonic()-started)));print(r.stdout+r.stderr);r.check_returncode()

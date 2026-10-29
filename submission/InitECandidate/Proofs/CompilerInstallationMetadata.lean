import InitECandidate.Proofs.CompilerComputation
import InitECandidate.Proofs.BaselineInstallationFacts

open scoped InitECandidate.Proofs.CompilerComputation

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

namespace InitE
open InitECandidate.Proofs
open Flapjack Flapjack.Compiler.Backend.LabToTarget

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 0 in
theorem baseline_installation_metadata :
    baselineConfig.labConf.ffiNames = some baselineNames ∧
    baselineMmio.map (fun rec => nativePc+rec.entryPc) =
      (baselineEntryPcs.map BitVec.toNat).drop 2 ∧
    3788+InitECandidate.nativeCode.length+ffiOffset*(2+3) < 2^64 := by
  rw [LiteralFacts.nativeCode_length]
  decide_cbv

end InitE

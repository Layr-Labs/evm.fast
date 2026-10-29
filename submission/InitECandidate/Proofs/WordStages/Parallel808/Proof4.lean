import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel808.Data4
import InitECandidate.Proofs.WordStages.Parallel808.Data3
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel808
theorem pass808_4_eq : WordCse.wordCommonSubexpElim (pass808_3) = pass808_4 := by
  kernel_rfl
#print axioms pass808_4_eq
end InitECandidate.Proofs.WordStages.Parallel808

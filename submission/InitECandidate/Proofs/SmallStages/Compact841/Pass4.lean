import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallStages.Compact841.Data
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact841
theorem pass4_eq : WordCse.wordCommonSubexpElim pass3 = pass4 := by
  kernel_rfl
#print axioms pass4_eq
end InitECandidate.Proofs.SmallStages.Compact841

import InitECandidate.Proofs.SmallStages.KernelPass163.Data
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.KernelPass163
theorem pass7_eq : WordUnreach.removeUnreach pass6 = pass7 := by
  with_unfolding_all rfl
#print axioms pass7_eq
end InitECandidate.Proofs.SmallStages.KernelPass163

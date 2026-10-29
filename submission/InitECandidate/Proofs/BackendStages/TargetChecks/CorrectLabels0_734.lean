import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_734
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_734_eq : LabToTarget.sectionLabels 803228 Initial734.lines [] = (803964, localLabels0_734) := by
  with_unfolding_all rfl
#print axioms localLabels0_734_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

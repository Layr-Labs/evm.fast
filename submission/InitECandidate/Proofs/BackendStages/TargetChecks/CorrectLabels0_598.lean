import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_598
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_598_eq : LabToTarget.sectionLabels 519424 Initial598.lines [] = (520584, localLabels0_598) := by
  with_unfolding_all rfl
#print axioms localLabels0_598_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

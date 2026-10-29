import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_599
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_599_eq : LabToTarget.sectionLabels 520584 Initial599.lines [] = (520964, localLabels0_599) := by
  with_unfolding_all rfl
#print axioms localLabels0_599_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

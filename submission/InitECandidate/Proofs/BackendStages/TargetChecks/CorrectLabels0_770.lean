import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_770
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_770_eq : LabToTarget.sectionLabels 840604 Initial770.lines [] = (847688, localLabels0_770) := by
  with_unfolding_all rfl
#print axioms localLabels0_770_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

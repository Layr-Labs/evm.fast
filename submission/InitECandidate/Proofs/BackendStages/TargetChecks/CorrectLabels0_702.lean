import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_702
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_702_eq : LabToTarget.sectionLabels 731648 Initial702.lines [] = (732756, localLabels0_702) := by
  with_unfolding_all rfl
#print axioms localLabels0_702_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

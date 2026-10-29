import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_687
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_687_eq : LabToTarget.sectionLabels 689896 Reencode0_687.lines [] = (690204, localLabels1_687) := by
  with_unfolding_all rfl
#print axioms localLabels1_687_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

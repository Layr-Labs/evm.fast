import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_684
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_684_eq : LabToTarget.sectionLabels 679844 Reencode0_684.lines [] = (682116, localLabels1_684) := by
  with_unfolding_all rfl
#print axioms localLabels1_684_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

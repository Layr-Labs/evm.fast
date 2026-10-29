import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_802
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_802_eq : LabToTarget.sectionLabels 937716 Reencode0_802.lines [] = (939432, localLabels1_802) := by
  with_unfolding_all rfl
#print axioms localLabels1_802_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

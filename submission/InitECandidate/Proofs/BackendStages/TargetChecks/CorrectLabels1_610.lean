import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_610
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_610_eq : LabToTarget.sectionLabels 533856 Reencode0_610.lines [] = (534656, localLabels1_610) := by
  with_unfolding_all rfl
#print axioms localLabels1_610_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_870
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_870_eq : LabToTarget.sectionLabels 1070852 Reencode0_870.lines [] = (1071100, localLabels1_870) := by
  with_unfolding_all rfl
#print axioms localLabels1_870_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

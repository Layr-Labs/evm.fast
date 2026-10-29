import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_611
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_611_eq : LabToTarget.sectionLabels 534656 Reencode0_611.lines [] = (534980, localLabels1_611) := by
  with_unfolding_all rfl
#print axioms localLabels1_611_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

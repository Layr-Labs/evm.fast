import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_772
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_772_eq : LabToTarget.sectionLabels 858128 Reencode0_772.lines [] = (859920, localLabels1_772) := by
  with_unfolding_all rfl
#print axioms localLabels1_772_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

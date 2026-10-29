import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_714
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_714_eq : LabToTarget.sectionLabels 771716 Reencode0_714.lines [] = (791020, localLabels1_714) := by
  with_unfolding_all rfl
#print axioms localLabels1_714_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

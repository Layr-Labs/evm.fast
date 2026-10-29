import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_860
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_860_eq : LabToTarget.sectionLabels 1031184 Reencode0_860.lines [] = (1033272, localLabels1_860) := by
  with_unfolding_all rfl
#print axioms localLabels1_860_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

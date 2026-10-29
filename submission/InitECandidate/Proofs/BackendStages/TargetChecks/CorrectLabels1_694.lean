import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_694
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_694_eq : LabToTarget.sectionLabels 708444 Reencode0_694.lines [] = (710868, localLabels1_694) := by
  with_unfolding_all rfl
#print axioms localLabels1_694_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

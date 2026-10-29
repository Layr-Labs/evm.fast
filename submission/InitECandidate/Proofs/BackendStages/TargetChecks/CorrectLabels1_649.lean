import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_649
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_649_eq : LabToTarget.sectionLabels 611752 Reencode0_649.lines [] = (611840, localLabels1_649) := by
  with_unfolding_all rfl
#print axioms localLabels1_649_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

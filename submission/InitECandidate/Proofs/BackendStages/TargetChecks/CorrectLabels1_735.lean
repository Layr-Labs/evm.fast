import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_735
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_735_eq : LabToTarget.sectionLabels 803984 Reencode0_735.lines [] = (804720, localLabels1_735) := by
  with_unfolding_all rfl
#print axioms localLabels1_735_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

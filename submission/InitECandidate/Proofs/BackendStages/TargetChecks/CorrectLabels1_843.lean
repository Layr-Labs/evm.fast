import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_843
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_843_eq : LabToTarget.sectionLabels 998884 Reencode0_843.lines [] = (1000232, localLabels1_843) := by
  with_unfolding_all rfl
#print axioms localLabels1_843_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

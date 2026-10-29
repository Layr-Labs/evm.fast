import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_774
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_774_eq : LabToTarget.sectionLabels 861080 Reencode0_774.lines [] = (862056, localLabels1_774) := by
  with_unfolding_all rfl
#print axioms localLabels1_774_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

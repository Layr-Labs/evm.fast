import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_853
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_853_eq : LabToTarget.sectionLabels 1023152 Reencode0_853.lines [] = (1025056, localLabels1_853) := by
  with_unfolding_all rfl
#print axioms localLabels1_853_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

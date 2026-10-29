import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_856
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_856_eq : LabToTarget.sectionLabels 1029388 Reencode0_856.lines [] = (1029428, localLabels1_856) := by
  with_unfolding_all rfl
#print axioms localLabels1_856_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

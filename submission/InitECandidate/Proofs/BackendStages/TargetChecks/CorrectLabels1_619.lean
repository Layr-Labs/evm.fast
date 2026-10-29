import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_619
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_619_eq : LabToTarget.sectionLabels 548004 Reencode0_619.lines [] = (549556, localLabels1_619) := by
  with_unfolding_all rfl
#print axioms localLabels1_619_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_613
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_613_eq : LabToTarget.sectionLabels 535624 Reencode0_613.lines [] = (536160, localLabels1_613) := by
  with_unfolding_all rfl
#print axioms localLabels1_613_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

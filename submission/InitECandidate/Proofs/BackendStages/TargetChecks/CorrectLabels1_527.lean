import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_527
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_527
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_527_eq : LabToTarget.sectionLabels 430496 Reencode0_527.lines [] = (430924, localLabels1_527) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_527_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

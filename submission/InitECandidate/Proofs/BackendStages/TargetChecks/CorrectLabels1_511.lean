import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_511
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_511
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_511_eq : LabToTarget.sectionLabels 416108 Reencode0_511.lines [] = (416980, localLabels1_511) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_511_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

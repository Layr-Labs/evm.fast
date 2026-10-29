import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_255
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_255
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_255_eq : LabToTarget.sectionLabels 202368 Reencode0_255.lines [] = (202920, localLabels1_255) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_255_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

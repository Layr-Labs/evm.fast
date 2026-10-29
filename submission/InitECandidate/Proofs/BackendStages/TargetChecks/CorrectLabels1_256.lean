import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_256
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_256
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_256_eq : LabToTarget.sectionLabels 202920 Reencode0_256.lines [] = (206604, localLabels1_256) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_256_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

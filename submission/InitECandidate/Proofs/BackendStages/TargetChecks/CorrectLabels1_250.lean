import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_250
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_250
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_250_eq : LabToTarget.sectionLabels 195356 Reencode0_250.lines [] = (196140, localLabels1_250) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_250_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

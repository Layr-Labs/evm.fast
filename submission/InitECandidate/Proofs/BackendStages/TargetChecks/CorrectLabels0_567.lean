import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_567
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_567
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_567_eq : LabToTarget.sectionLabels 465532 Initial567.lines [] = (468520, localLabels0_567) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_567_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

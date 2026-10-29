import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_514
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_514
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_514_eq : LabToTarget.sectionLabels 418552 Initial514.lines [] = (419312, localLabels0_514) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_514_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

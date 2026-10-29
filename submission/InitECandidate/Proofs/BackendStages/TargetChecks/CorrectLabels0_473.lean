import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_473
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_473
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_473_eq : LabToTarget.sectionLabels 393236 Initial473.lines [] = (393272, localLabels0_473) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_473_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

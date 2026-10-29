import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_569
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_569
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_569_eq : LabToTarget.sectionLabels 468948 Initial569.lines [] = (471308, localLabels0_569) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_569_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

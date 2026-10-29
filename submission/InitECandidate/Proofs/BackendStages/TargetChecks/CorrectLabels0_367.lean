import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_367
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_367
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_367_eq : LabToTarget.sectionLabels 308136 Initial367.lines [] = (311920, localLabels0_367) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_367_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

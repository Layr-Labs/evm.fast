import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_430
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_430
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_430_eq : LabToTarget.sectionLabels 349472 Initial430.lines [] = (349912, localLabels0_430) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_430_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

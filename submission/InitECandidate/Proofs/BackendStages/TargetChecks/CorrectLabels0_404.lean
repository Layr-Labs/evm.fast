import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_404
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_404
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_404_eq : LabToTarget.sectionLabels 334076 Initial404.lines [] = (334728, localLabels0_404) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_404_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

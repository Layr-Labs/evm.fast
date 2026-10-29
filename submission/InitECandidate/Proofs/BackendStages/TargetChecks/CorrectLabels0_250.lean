import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_250
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_250
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_250_eq : LabToTarget.sectionLabels 195352 Initial250.lines [] = (196136, localLabels0_250) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_250_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

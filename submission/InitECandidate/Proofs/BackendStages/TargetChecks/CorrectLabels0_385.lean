import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_385
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_385
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_385_eq : LabToTarget.sectionLabels 321788 Initial385.lines [] = (322448, localLabels0_385) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_385_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

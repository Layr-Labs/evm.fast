import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_274
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_274
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_274_eq : LabToTarget.sectionLabels 225052 Initial274.lines [] = (230000, localLabels0_274) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_274_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

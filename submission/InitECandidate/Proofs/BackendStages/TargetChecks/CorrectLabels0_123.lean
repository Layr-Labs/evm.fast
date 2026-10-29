import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_123
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_123
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_123_eq : LabToTarget.sectionLabels 20596 Initial123.lines [] = (20720, localLabels0_123) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_123_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

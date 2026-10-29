import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_395
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_395
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_395_eq : LabToTarget.sectionLabels 329180 Initial395.lines [] = (329508, localLabels0_395) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_395_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

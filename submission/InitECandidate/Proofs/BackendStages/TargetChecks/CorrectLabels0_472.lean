import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_472
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_472
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_472_eq : LabToTarget.sectionLabels 392948 Initial472.lines [] = (393236, localLabels0_472) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_472_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

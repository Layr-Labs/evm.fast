import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_467
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_467
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_467_eq : LabToTarget.sectionLabels 392080 Initial467.lines [] = (392256, localLabels0_467) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_467_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

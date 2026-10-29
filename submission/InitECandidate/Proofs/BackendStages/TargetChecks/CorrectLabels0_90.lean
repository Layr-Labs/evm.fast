import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_90
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_90
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_90_eq : LabToTarget.sectionLabels 10696 Initial90.lines [] = (11120, localLabels0_90) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_90_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

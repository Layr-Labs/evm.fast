import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_101
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_101
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_101_eq : LabToTarget.sectionLabels 12292 Initial101.lines [] = (12336, localLabels0_101) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_101_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

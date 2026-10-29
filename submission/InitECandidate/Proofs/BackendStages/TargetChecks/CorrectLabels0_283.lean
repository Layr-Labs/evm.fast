import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_283
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_283
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_283_eq : LabToTarget.sectionLabels 241668 Initial283.lines [] = (244716, localLabels0_283) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_283_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

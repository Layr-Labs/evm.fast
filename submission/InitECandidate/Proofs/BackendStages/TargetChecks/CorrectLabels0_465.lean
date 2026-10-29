import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_465
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_465
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_465_eq : LabToTarget.sectionLabels 391396 Initial465.lines [] = (391568, localLabels0_465) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_465_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

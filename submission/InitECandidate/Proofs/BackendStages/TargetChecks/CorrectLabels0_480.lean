import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_480
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_480
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_480_eq : LabToTarget.sectionLabels 395120 Initial480.lines [] = (396572, localLabels0_480) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_480_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_447
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_447
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_447_eq : LabToTarget.sectionLabels 359684 Initial447.lines [] = (360184, localLabels0_447) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_447_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_334
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_334
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_334_eq : LabToTarget.sectionLabels 287180 Initial334.lines [] = (288728, localLabels0_334) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_334_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

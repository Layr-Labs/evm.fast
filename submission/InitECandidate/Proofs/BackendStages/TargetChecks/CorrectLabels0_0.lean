import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_0
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_0
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_0_eq : LabToTarget.sectionLabels 0 Initial0.lines [] = (780, localLabels0_0) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_0_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_247
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_247
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_247_eq : LabToTarget.sectionLabels 191360 Initial247.lines [] = (191996, localLabels0_247) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_247_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

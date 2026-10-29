import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_499
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_499
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_499_eq : LabToTarget.sectionLabels 404996 Initial499.lines [] = (405868, localLabels0_499) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_499_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

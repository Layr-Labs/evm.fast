import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_157
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_157
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_157_eq : LabToTarget.sectionLabels 90524 Initial157.lines [] = (90956, localLabels0_157) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_157_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

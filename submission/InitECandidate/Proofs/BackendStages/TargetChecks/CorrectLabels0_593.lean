import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_593
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_593
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_593_eq : LabToTarget.sectionLabels 496204 Initial593.lines [] = (501692, localLabels0_593) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_593_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

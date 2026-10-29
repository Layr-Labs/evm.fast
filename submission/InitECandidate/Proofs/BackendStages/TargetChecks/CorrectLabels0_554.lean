import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_554
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_554
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_554_eq : LabToTarget.sectionLabels 456084 Initial554.lines [] = (457156, localLabels0_554) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_554_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

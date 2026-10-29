import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_394
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_394
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_394_eq : LabToTarget.sectionLabels 328972 Initial394.lines [] = (329180, localLabels0_394) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_394_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

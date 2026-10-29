import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_403
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_403
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_403_eq : LabToTarget.sectionLabels 333736 Initial403.lines [] = (334076, localLabels0_403) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_403_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

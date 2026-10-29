import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_551
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_551
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_551_eq : LabToTarget.sectionLabels 453592 Initial551.lines [] = (454464, localLabels0_551) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_551_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

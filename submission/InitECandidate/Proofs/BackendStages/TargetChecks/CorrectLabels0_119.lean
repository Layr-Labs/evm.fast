import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_119
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_119
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_119_eq : LabToTarget.sectionLabels 14236 Initial119.lines [] = (14488, localLabels0_119) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_119_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

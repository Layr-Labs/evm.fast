import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_592
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_592
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_592_eq : LabToTarget.sectionLabels 495632 Initial592.lines [] = (496204, localLabels0_592) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_592_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

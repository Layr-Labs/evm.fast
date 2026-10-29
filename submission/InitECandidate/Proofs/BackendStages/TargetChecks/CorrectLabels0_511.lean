import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_511
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_511
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_511_eq : LabToTarget.sectionLabels 416104 Initial511.lines [] = (416976, localLabels0_511) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_511_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

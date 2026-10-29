import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_555
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_555
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_555_eq : LabToTarget.sectionLabels 457156 Initial555.lines [] = (457716, localLabels0_555) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_555_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_70
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_70
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_70_eq : LabToTarget.sectionLabels 6044 Initial70.lines [] = (6080, localLabels0_70) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_70_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

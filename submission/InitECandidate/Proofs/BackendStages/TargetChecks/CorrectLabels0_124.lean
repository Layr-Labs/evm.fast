import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_124
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_124
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_124_eq : LabToTarget.sectionLabels 20720 Initial124.lines [] = (20924, localLabels0_124) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_124_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

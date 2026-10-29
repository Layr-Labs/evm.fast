import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_396
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_396
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_396_eq : LabToTarget.sectionLabels 329512 Reencode0_396.lines [] = (329708, localLabels1_396) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_396_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

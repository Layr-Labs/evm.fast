import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_488
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_488
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_488_eq : LabToTarget.sectionLabels 400188 Reencode0_488.lines [] = (400500, localLabels1_488) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_488_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

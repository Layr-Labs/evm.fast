import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_397
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_397
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_397_eq : LabToTarget.sectionLabels 329708 Reencode0_397.lines [] = (330476, localLabels1_397) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_397_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

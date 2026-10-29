import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_504
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_504
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_504_eq : LabToTarget.sectionLabels 409360 Reencode0_504.lines [] = (410400, localLabels1_504) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_504_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

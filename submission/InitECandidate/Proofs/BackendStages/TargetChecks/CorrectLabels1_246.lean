import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_246
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_246
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_246_eq : LabToTarget.sectionLabels 191316 Reencode0_246.lines [] = (191364, localLabels1_246) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_246_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

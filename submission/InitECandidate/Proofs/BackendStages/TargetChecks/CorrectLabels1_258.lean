import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_258
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_258
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_258_eq : LabToTarget.sectionLabels 207764 Reencode0_258.lines [] = (208076, localLabels1_258) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_258_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

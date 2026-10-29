import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_341
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_341
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_341_eq : LabToTarget.sectionLabels 290316 Reencode0_341.lines [] = (290536, localLabels1_341) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_341_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_334
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_334
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_334_eq : LabToTarget.sectionLabels 287184 Reencode0_334.lines [] = (288732, localLabels1_334) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_334_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

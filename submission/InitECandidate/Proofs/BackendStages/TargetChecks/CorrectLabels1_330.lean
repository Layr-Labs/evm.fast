import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_330
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_330
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_330_eq : LabToTarget.sectionLabels 281716 Reencode0_330.lines [] = (282236, localLabels1_330) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_330_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

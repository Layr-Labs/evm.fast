import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_340
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_340
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_340_eq : LabToTarget.sectionLabels 290048 Reencode0_340.lines [] = (290316, localLabels1_340) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_340_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

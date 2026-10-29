import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_176
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_176
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_176_eq : LabToTarget.sectionLabels 102720 Reencode0_176.lines [] = (103144, localLabels1_176) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_176_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

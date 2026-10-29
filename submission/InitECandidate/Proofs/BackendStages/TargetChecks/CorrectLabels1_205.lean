import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_205
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_205
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_205_eq : LabToTarget.sectionLabels 116592 Reencode0_205.lines [] = (116908, localLabels1_205) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_205_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

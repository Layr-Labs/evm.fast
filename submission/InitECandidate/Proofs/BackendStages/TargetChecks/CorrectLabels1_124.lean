import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_124
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_124
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_124_eq : LabToTarget.sectionLabels 20724 Reencode0_124.lines [] = (20928, localLabels1_124) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_124_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

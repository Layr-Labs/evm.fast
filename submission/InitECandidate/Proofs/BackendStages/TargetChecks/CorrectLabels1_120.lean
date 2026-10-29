import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_120
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_120
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_120_eq : LabToTarget.sectionLabels 14492 Reencode0_120.lines [] = (16208, localLabels1_120) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_120_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

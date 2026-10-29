import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_114
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_114
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_114_eq : LabToTarget.sectionLabels 13696 Reencode0_114.lines [] = (13724, localLabels1_114) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_114_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

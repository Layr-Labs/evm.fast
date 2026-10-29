import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_113
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_113
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_113_eq : LabToTarget.sectionLabels 13668 Reencode0_113.lines [] = (13696, localLabels1_113) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_113_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

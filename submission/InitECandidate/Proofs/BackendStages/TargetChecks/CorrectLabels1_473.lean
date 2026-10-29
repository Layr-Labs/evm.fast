import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_473
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_473
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_473_eq : LabToTarget.sectionLabels 393240 Reencode0_473.lines [] = (393276, localLabels1_473) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_473_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

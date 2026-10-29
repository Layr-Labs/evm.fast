import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_537
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_537
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_537_eq : LabToTarget.sectionLabels 439388 Reencode0_537.lines [] = (439896, localLabels1_537) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_537_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

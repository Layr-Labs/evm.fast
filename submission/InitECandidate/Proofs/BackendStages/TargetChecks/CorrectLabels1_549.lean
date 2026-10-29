import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_549
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_549
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_549_eq : LabToTarget.sectionLabels 447676 Reencode0_549.lines [] = (448952, localLabels1_549) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_549_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

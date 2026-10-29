import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_497
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_497
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_497_eq : LabToTarget.sectionLabels 403256 Reencode0_497.lines [] = (404128, localLabels1_497) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_497_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

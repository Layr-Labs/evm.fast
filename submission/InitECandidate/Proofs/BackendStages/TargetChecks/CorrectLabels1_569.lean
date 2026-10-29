import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_569
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_569
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_569_eq : LabToTarget.sectionLabels 468952 Reencode0_569.lines [] = (471312, localLabels1_569) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_569_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

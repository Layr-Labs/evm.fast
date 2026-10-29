import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_322
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_322
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_322_eq : LabToTarget.sectionLabels 275192 Reencode0_322.lines [] = (277576, localLabels1_322) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_322_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

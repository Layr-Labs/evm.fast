import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_238
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_238
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_238_eq : LabToTarget.sectionLabels 186880 Reencode0_238.lines [] = (187196, localLabels1_238) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_238_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_314
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_314
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_314_eq : LabToTarget.sectionLabels 265536 Reencode0_314.lines [] = (266624, localLabels1_314) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_314_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

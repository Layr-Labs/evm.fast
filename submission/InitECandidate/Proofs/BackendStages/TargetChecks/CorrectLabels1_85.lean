import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_85
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_85
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_85_eq : LabToTarget.sectionLabels 9612 Reencode0_85.lines [] = (9764, localLabels1_85) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_85_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

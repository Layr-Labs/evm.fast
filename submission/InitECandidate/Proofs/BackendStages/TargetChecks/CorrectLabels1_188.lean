import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_188
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_188
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_188_eq : LabToTarget.sectionLabels 106868 Reencode0_188.lines [] = (107144, localLabels1_188) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_188_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

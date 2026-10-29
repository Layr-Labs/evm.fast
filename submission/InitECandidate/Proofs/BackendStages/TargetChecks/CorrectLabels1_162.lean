import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_162
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_162
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_162_eq : LabToTarget.sectionLabels 95284 Reencode0_162.lines [] = (95656, localLabels1_162) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_162_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

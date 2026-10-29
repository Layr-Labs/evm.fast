import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_123
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_123
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_123_eq : LabToTarget.sectionLabels 20600 Reencode0_123.lines [] = (20724, localLabels1_123) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_123_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

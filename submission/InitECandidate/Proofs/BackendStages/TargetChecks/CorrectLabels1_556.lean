import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_556
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_556
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_556_eq : LabToTarget.sectionLabels 457720 Reencode0_556.lines [] = (458276, localLabels1_556) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_556_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

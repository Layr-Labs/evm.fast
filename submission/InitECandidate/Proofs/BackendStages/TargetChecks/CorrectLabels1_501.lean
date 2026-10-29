import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_501
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_501
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_501_eq : LabToTarget.sectionLabels 406744 Reencode0_501.lines [] = (407616, localLabels1_501) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_501_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

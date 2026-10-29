import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_554
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_554
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_554_eq : LabToTarget.sectionLabels 456088 Reencode0_554.lines [] = (457160, localLabels1_554) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_554_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

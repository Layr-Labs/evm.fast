import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_443
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_443
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_443_eq : LabToTarget.sectionLabels 358184 Reencode0_443.lines [] = (358612, localLabels1_443) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_443_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

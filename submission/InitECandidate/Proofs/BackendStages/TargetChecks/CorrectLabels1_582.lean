import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_582
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_582
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_582_eq : LabToTarget.sectionLabels 480000 Reencode0_582.lines [] = (480660, localLabels1_582) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_582_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

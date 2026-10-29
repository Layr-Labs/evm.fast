import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_130
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_130
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_130_eq : LabToTarget.sectionLabels 26028 Reencode0_130.lines [] = (26200, localLabels1_130) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_130_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

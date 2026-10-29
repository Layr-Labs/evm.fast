import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_494
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_494
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_494_eq : LabToTarget.sectionLabels 402668 Reencode0_494.lines [] = (402864, localLabels1_494) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_494_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

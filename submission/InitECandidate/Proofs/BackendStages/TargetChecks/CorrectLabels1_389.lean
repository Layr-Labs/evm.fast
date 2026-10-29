import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_389
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_389
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_389_eq : LabToTarget.sectionLabels 326924 Reencode0_389.lines [] = (327840, localLabels1_389) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_389_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

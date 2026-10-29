import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_480
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_480
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_480_eq : LabToTarget.sectionLabels 395124 Reencode0_480.lines [] = (396576, localLabels1_480) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_480_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

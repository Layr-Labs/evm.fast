import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_83
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_83
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_83_eq : LabToTarget.sectionLabels 9388 Reencode0_83.lines [] = (9452, localLabels1_83) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_83_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_100
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_100
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_100_eq : LabToTarget.sectionLabels 12284 Reencode0_100.lines [] = (12296, localLabels1_100) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_100_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

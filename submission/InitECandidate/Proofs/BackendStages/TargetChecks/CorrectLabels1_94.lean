import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_94
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_94
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_94_eq : LabToTarget.sectionLabels 11272 Reencode0_94.lines [] = (11624, localLabels1_94) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_94_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

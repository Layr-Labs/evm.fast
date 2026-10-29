import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_88
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_88
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_88_eq : LabToTarget.sectionLabels 10136 Reencode0_88.lines [] = (10192, localLabels1_88) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_88_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

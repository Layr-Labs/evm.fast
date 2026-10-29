import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_223
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_223
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_223_eq : LabToTarget.sectionLabels 133768 Reencode0_223.lines [] = (138260, localLabels1_223) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_223_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

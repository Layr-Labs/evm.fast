import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_203
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_203
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_203_eq : LabToTarget.sectionLabels 115716 Reencode0_203.lines [] = (116304, localLabels1_203) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_203_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

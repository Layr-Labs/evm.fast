import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_118
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_118
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_118_eq : LabToTarget.sectionLabels 14092 Reencode0_118.lines [] = (14240, localLabels1_118) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_118_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

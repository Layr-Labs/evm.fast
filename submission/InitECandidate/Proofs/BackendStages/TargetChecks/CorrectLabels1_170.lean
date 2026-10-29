import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_170
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_170
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_170_eq : LabToTarget.sectionLabels 101004 Reencode0_170.lines [] = (101512, localLabels1_170) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_170_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

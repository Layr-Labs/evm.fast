import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_261
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_261
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_261_eq : LabToTarget.sectionLabels 214612 Reencode0_261.lines [] = (215628, localLabels1_261) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_261_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

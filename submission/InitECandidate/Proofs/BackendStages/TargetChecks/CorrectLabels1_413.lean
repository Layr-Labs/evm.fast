import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_413
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_413
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_413_eq : LabToTarget.sectionLabels 339444 Reencode0_413.lines [] = (339640, localLabels1_413) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_413_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

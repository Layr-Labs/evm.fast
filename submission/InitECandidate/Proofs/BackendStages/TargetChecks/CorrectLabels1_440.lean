import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_440
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_440
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_440_eq : LabToTarget.sectionLabels 356644 Reencode0_440.lines [] = (356980, localLabels1_440) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_440_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

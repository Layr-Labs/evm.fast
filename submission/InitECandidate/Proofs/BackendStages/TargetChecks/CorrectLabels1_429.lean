import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_429
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_429
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_429_eq : LabToTarget.sectionLabels 348980 Reencode0_429.lines [] = (349476, localLabels1_429) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_429_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_297
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_297
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_297_eq : LabToTarget.sectionLabels 251780 Reencode0_297.lines [] = (252064, localLabels1_297) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_297_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

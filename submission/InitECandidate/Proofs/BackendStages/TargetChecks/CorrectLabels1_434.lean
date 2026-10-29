import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_434
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_434
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_434_eq : LabToTarget.sectionLabels 353368 Reencode0_434.lines [] = (353476, localLabels1_434) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_434_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

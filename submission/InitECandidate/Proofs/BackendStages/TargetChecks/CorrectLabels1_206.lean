import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_206
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_206
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_206_eq : LabToTarget.sectionLabels 116908 Reencode0_206.lines [] = (122384, localLabels1_206) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_206_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

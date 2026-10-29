import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_270
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_270
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_270_eq : LabToTarget.sectionLabels 223980 Reencode0_270.lines [] = (224260, localLabels1_270) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_270_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

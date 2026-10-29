import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_451
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_451
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_451_eq : LabToTarget.sectionLabels 364296 Reencode0_451.lines [] = (364756, localLabels1_451) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_451_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

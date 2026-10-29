import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_558
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_558
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_558_eq : LabToTarget.sectionLabels 458720 Reencode0_558.lines [] = (460176, localLabels1_558) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_558_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

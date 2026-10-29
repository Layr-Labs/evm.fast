import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_493
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_493
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_493_eq : LabToTarget.sectionLabels 402472 Reencode0_493.lines [] = (402668, localLabels1_493) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_493_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

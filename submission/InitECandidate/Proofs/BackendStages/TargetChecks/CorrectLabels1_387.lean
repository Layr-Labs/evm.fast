import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_387
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_387
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_387_eq : LabToTarget.sectionLabels 324604 Reencode0_387.lines [] = (326040, localLabels1_387) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_387_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

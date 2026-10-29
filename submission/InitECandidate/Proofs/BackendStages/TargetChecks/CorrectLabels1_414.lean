import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_414
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_414
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_414_eq : LabToTarget.sectionLabels 339640 Reencode0_414.lines [] = (340380, localLabels1_414) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_414_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

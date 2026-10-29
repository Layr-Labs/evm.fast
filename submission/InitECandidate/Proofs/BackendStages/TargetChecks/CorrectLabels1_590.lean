import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_590
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_590
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_590_eq : LabToTarget.sectionLabels 491008 Reencode0_590.lines [] = (494812, localLabels1_590) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_590_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_365
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_365
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_365_eq : LabToTarget.sectionLabels 306004 Reencode0_365.lines [] = (307760, localLabels1_365) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_365_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

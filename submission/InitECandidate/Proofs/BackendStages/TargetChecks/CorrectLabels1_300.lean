import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_300
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_300
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_300_eq : LabToTarget.sectionLabels 252436 Reencode0_300.lines [] = (253492, localLabels1_300) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_300_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

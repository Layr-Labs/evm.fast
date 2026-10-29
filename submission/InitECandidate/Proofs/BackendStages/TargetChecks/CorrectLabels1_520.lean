import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_520
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_520
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_520_eq : LabToTarget.sectionLabels 423532 Reencode0_520.lines [] = (424576, localLabels1_520) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_520_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

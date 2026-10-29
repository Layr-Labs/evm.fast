import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_229
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_229
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_229_eq : LabToTarget.sectionLabels 162560 Reencode0_229.lines [] = (163368, localLabels1_229) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_229_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

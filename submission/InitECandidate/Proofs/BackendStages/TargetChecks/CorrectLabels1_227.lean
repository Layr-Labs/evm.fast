import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_227
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_227
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_227_eq : LabToTarget.sectionLabels 154624 Reencode0_227.lines [] = (161200, localLabels1_227) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_227_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

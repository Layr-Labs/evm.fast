import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_166
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_166
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_166_eq : LabToTarget.sectionLabels 99244 Reencode0_166.lines [] = (99596, localLabels1_166) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_166_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

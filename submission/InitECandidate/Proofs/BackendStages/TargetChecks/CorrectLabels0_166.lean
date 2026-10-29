import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_166
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_166
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_166_eq : LabToTarget.sectionLabels 99240 Initial166.lines [] = (99592, localLabels0_166) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_166_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

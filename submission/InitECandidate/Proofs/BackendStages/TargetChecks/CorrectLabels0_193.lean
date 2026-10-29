import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_193
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_193
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_193_eq : LabToTarget.sectionLabels 110696 Initial193.lines [] = (111440, localLabels0_193) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_193_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

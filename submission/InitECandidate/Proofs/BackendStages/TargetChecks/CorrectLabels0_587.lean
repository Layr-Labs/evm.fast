import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_587
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_587
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_587_eq : LabToTarget.sectionLabels 486676 Initial587.lines [] = (488020, localLabels0_587) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_587_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

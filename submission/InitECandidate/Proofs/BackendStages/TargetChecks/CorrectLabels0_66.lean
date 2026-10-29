import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_66
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_66
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_66_eq : LabToTarget.sectionLabels 5240 Initial66.lines [] = (5428, localLabels0_66) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_66_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

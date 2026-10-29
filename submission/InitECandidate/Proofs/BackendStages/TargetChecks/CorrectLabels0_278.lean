import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_278
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_278
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_278_eq : LabToTarget.sectionLabels 235496 Initial278.lines [] = (236688, localLabels0_278) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_278_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

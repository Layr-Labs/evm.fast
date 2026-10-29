import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_368
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_368
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_368_eq : LabToTarget.sectionLabels 311920 Initial368.lines [] = (311940, localLabels0_368) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_368_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

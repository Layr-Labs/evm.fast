import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_490
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_490
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_490_eq : LabToTarget.sectionLabels 402324 Initial490.lines [] = (402368, localLabels0_490) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_490_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

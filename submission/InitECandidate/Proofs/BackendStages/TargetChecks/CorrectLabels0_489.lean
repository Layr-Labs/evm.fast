import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_489
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_489
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_489_eq : LabToTarget.sectionLabels 400496 Initial489.lines [] = (402324, localLabels0_489) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_489_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

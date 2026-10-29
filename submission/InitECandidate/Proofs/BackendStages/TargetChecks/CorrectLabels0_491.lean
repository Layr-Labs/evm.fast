import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_491
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_491
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_491_eq : LabToTarget.sectionLabels 402368 Initial491.lines [] = (402400, localLabels0_491) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_491_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

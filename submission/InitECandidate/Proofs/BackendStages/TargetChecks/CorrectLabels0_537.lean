import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_537
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_537
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_537_eq : LabToTarget.sectionLabels 439384 Initial537.lines [] = (439892, localLabels0_537) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_537_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

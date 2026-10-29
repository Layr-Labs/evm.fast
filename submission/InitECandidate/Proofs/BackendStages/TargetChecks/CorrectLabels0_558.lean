import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_558
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_558
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_558_eq : LabToTarget.sectionLabels 458716 Initial558.lines [] = (460172, localLabels0_558) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_558_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

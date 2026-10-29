import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_387
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_387
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_387_eq : LabToTarget.sectionLabels 324600 Initial387.lines [] = (326036, localLabels0_387) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_387_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

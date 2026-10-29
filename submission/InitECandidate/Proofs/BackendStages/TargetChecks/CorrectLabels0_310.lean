import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_310
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_310
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_310_eq : LabToTarget.sectionLabels 262464 Initial310.lines [] = (263268, localLabels0_310) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_310_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

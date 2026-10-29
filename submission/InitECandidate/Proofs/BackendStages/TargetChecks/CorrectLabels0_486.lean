import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_486
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_486
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_486_eq : LabToTarget.sectionLabels 399760 Initial486.lines [] = (399872, localLabels0_486) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_486_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

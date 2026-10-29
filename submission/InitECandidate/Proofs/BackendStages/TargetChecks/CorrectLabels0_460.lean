import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_460
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_460
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_460_eq : LabToTarget.sectionLabels 386584 Initial460.lines [] = (389888, localLabels0_460) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_460_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

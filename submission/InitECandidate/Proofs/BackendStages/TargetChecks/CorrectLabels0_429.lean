import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_429
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_429
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_429_eq : LabToTarget.sectionLabels 348976 Initial429.lines [] = (349472, localLabels0_429) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_429_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

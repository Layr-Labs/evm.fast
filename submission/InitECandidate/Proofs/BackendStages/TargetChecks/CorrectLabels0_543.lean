import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_543
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_543
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_543_eq : LabToTarget.sectionLabels 441408 Initial543.lines [] = (442112, localLabels0_543) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_543_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

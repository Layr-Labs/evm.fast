import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_502
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_502
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_502_eq : LabToTarget.sectionLabels 407612 Initial502.lines [] = (408484, localLabels0_502) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_502_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_190
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_190
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_190_eq : LabToTarget.sectionLabels 107612 Initial190.lines [] = (107860, localLabels0_190) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_190_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

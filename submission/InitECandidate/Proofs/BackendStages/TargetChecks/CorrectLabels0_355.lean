import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_355
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_355
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_355_eq : LabToTarget.sectionLabels 300856 Initial355.lines [] = (300872, localLabels0_355) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_355_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

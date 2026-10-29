import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_363
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_363
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_363_eq : LabToTarget.sectionLabels 304724 Initial363.lines [] = (305548, localLabels0_363) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_363_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

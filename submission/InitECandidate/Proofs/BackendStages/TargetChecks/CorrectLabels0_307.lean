import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_307
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_307
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_307_eq : LabToTarget.sectionLabels 261804 Initial307.lines [] = (262048, localLabels0_307) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_307_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_462
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_462
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_462_eq : LabToTarget.sectionLabels 391100 Initial462.lines [] = (391148, localLabels0_462) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_462_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

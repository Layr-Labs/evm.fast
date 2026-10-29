import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_296
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_296
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_296_eq : LabToTarget.sectionLabels 251472 Initial296.lines [] = (251776, localLabels0_296) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_296_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

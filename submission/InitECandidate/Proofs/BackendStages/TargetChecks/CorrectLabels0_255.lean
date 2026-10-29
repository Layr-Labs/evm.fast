import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_255
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_255
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_255_eq : LabToTarget.sectionLabels 202364 Initial255.lines [] = (202916, localLabels0_255) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_255_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_369
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_369
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_369_eq : LabToTarget.sectionLabels 311940 Initial369.lines [] = (312124, localLabels0_369) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_369_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

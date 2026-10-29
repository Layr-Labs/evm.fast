import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_519
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_519
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_519_eq : LabToTarget.sectionLabels 422484 Initial519.lines [] = (423528, localLabels0_519) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_519_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_327
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_327
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_327_eq : LabToTarget.sectionLabels 280028 Initial327.lines [] = (280316, localLabels0_327) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_327_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

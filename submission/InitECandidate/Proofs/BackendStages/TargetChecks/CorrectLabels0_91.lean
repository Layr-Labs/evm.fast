import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_91
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_91
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_91_eq : LabToTarget.sectionLabels 11120 Initial91.lines [] = (11212, localLabels0_91) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_91_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

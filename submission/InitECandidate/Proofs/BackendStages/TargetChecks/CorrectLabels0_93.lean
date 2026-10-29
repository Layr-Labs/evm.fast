import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_93
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_93
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_93_eq : LabToTarget.sectionLabels 11240 Initial93.lines [] = (11268, localLabels0_93) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_93_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

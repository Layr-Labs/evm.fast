import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_74
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_74
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_74_eq : LabToTarget.sectionLabels 6600 Initial74.lines [] = (7040, localLabels0_74) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_74_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

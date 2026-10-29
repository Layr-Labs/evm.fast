import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_159
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_159
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_159_eq : LabToTarget.sectionLabels 92220 Initial159.lines [] = (92240, localLabels0_159) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_159_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

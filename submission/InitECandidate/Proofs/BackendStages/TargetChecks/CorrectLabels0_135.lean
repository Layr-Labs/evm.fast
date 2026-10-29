import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_135
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_135
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_135_eq : LabToTarget.sectionLabels 27760 Initial135.lines [] = (28336, localLabels0_135) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_135_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

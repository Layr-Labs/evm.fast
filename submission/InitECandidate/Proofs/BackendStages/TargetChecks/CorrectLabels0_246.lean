import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_246
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_246
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_246_eq : LabToTarget.sectionLabels 191312 Initial246.lines [] = (191360, localLabels0_246) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_246_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_288
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_288
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_288_eq : LabToTarget.sectionLabels 248428 Initial288.lines [] = (248684, localLabels0_288) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_288_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

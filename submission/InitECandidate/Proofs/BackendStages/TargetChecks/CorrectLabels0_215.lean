import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_215
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_215
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_215_eq : LabToTarget.sectionLabels 132104 Initial215.lines [] = (132172, localLabels0_215) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_215_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

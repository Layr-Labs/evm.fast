import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_332
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_332
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_332_eq : LabToTarget.sectionLabels 282724 Initial332.lines [] = (283800, localLabels0_332) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_332_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

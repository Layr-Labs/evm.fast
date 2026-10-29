import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_228
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_228
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_228_eq : LabToTarget.sectionLabels 161196 Initial228.lines [] = (162556, localLabels0_228) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_228_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_383
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_383
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_383_eq : LabToTarget.sectionLabels 320596 Initial383.lines [] = (320692, localLabels0_383) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_383_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_343
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_343
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_343_eq : LabToTarget.sectionLabels 292688 Reencode0_343.lines [] = (293444, localLabels1_343) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_343_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

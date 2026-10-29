import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_331
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_331
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_331_eq : LabToTarget.sectionLabels 282236 Reencode0_331.lines [] = (282728, localLabels1_331) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_331_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

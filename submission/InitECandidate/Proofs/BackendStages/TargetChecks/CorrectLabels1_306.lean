import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_306
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_306
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_306_eq : LabToTarget.sectionLabels 260792 Reencode0_306.lines [] = (261808, localLabels1_306) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_306_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

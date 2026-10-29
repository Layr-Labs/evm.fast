import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_570
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_570
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_570_eq : LabToTarget.sectionLabels 471312 Reencode0_570.lines [] = (472788, localLabels1_570) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_570_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

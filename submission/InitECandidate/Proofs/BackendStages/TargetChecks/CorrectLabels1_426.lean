import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_426
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_426
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_426_eq : LabToTarget.sectionLabels 345844 Reencode0_426.lines [] = (346704, localLabels1_426) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_426_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

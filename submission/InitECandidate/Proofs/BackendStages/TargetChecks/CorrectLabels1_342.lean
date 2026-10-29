import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_342
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_342
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_342_eq : LabToTarget.sectionLabels 290536 Reencode0_342.lines [] = (292688, localLabels1_342) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_342_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

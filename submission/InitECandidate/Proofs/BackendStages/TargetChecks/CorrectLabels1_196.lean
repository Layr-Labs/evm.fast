import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_196
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_196
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_196_eq : LabToTarget.sectionLabels 111764 Reencode0_196.lines [] = (111780, localLabels1_196) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_196_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

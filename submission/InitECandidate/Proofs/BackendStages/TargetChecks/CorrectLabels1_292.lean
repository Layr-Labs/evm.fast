import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_292
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_292
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_292_eq : LabToTarget.sectionLabels 249796 Reencode0_292.lines [] = (250300, localLabels1_292) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_292_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

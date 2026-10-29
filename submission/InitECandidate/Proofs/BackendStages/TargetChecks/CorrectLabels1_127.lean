import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_127
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_127
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_127_eq : LabToTarget.sectionLabels 21096 Reencode0_127.lines [] = (23908, localLabels1_127) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_127_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

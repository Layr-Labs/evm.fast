import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_299
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_299
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_299_eq : LabToTarget.sectionLabels 252384 Reencode0_299.lines [] = (252436, localLabels1_299) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_299_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

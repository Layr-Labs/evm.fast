import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_202
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_202
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_202_eq : LabToTarget.sectionLabels 115208 Reencode0_202.lines [] = (115716, localLabels1_202) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_202_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

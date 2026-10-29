import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_290
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_290
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_290_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 249344 riscvConfig.encode Reencode0_290.lines [] true = (Reencode1_290.lines, 249496, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_290_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

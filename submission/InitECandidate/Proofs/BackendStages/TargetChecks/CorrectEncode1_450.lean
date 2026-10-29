import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_450
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_450
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_450_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 362520 riscvConfig.encode Reencode0_450.lines [] true = (Reencode1_450.lines, 364296, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_450_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_565
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_565
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_565_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 464172 riscvConfig.encode Reencode0_565.lines [] true = (Reencode1_565.lines, 464480, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_565_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

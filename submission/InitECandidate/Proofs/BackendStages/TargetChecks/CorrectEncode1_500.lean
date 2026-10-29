import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_500
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_500
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_500_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 405872 riscvConfig.encode Reencode0_500.lines [] true = (Reencode1_500.lines, 406744, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_500_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

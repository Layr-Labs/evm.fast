import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_558
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_558
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_558_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 458720 riscvConfig.encode Reencode0_558.lines [] true = (Reencode1_558.lines, 460176, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_558_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

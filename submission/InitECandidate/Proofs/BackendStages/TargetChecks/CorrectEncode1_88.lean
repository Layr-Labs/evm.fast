import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_88
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_88
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_88_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 10136 riscvConfig.encode Reencode0_88.lines [] true = (Reencode1_88.lines, 10192, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_88_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

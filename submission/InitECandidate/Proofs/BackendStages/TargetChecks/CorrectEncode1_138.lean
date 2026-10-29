import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_138
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_138
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_138_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 29740 riscvConfig.encode Reencode0_138.lines [] true = (Reencode1_138.lines, 30272, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_138_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_143
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_143
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_143_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 32476 riscvConfig.encode Reencode0_143.lines [] true = (Reencode1_143.lines, 33168, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_143_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

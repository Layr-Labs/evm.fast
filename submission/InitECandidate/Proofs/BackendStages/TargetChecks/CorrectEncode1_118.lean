import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_118
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_118
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_118_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 14092 riscvConfig.encode Reencode0_118.lines [] true = (Reencode1_118.lines, 14240, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_118_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

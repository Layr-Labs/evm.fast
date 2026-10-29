import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_505
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_505
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_505_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 410400 riscvConfig.encode Reencode0_505.lines [] true = (Reencode1_505.lines, 411440, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_505_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

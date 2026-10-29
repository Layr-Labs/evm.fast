import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_248
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_248
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_248_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 192000 riscvConfig.encode Reencode0_248.lines [] true = (Reencode1_248.lines, 195052, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_248_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

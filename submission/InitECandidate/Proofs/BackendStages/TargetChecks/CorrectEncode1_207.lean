import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_207
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_207
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_207_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 122384 riscvConfig.encode Reencode0_207.lines [] true = (Reencode1_207.lines, 126148, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_207_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

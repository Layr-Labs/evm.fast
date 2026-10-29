import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_166
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_166
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_166_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 99244 riscvConfig.encode Reencode0_166.lines [] true = (Reencode1_166.lines, 99596, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_166_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

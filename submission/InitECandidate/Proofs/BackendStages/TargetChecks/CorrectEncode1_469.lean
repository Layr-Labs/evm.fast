import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_469
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_469
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_469_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 392432 riscvConfig.encode Reencode0_469.lines [] true = (Reencode1_469.lines, 392492, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_469_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

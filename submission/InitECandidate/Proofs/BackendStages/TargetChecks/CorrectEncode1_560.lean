import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_560
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_560
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_560_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 460608 riscvConfig.encode Reencode0_560.lines [] true = (Reencode1_560.lines, 462900, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_560_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

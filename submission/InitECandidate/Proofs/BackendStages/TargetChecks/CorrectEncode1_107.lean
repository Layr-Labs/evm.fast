import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_107
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_107
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_107_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 12908 riscvConfig.encode Reencode0_107.lines [] true = (Reencode1_107.lines, 12968, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_107_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

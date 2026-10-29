import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_188
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_188
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_188_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 106868 riscvConfig.encode Reencode0_188.lines [] true = (Reencode1_188.lines, 107144, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_188_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

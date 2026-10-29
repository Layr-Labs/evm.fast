import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_70
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_70
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_70_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 6048 riscvConfig.encode Reencode0_70.lines [] true = (Reencode1_70.lines, 6084, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_70_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

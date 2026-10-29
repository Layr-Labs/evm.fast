import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_501
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_501
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_501_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 406744 riscvConfig.encode Initial501.lines [] true = (Reencode0_501.lines, 407616, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_501_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

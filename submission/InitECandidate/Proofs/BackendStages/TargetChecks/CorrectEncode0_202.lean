import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_202
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_202
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_202_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 115208 riscvConfig.encode Initial202.lines [] true = (Reencode0_202.lines, 115716, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_202_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

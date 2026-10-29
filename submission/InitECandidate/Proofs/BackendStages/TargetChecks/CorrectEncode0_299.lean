import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_299
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_299
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_299_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 252384 riscvConfig.encode Initial299.lines [] true = (Reencode0_299.lines, 252436, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_299_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

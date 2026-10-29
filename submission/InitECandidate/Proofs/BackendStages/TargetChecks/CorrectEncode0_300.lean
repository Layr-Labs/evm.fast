import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_300
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_300
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_300_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 252436 riscvConfig.encode Initial300.lines [] true = (Reencode0_300.lines, 253492, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_300_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

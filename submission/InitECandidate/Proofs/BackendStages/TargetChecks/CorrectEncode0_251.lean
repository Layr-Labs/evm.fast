import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_251
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_251
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_251_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 196140 riscvConfig.encode Initial251.lines [] true = (Reencode0_251.lines, 197652, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_251_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

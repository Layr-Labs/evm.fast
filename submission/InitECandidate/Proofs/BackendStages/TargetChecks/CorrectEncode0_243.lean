import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_243
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_243
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_243_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 190228 riscvConfig.encode Initial243.lines [] true = (Reencode0_243.lines, 190968, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_243_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

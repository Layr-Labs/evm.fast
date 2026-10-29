import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_222
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_222
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_222_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 133736 riscvConfig.encode Initial222.lines [] true = (Reencode0_222.lines, 133768, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_222_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

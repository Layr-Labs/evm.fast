import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_552
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_552
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_552_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 454468 riscvConfig.encode Initial552.lines [] true = (Reencode0_552.lines, 455532, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_552_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

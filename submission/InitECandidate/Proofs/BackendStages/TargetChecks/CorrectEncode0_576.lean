import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_576
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_576
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_576_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 475632 riscvConfig.encode Initial576.lines [] true = (Reencode0_576.lines, 477216, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_576_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

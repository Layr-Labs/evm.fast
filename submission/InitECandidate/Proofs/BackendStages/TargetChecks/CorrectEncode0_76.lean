import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_76
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_76
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_76_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 7072 riscvConfig.encode Initial76.lines [] true = (Reencode0_76.lines, 7108, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_76_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

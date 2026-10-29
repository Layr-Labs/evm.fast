import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_274
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_274
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_274_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 225056 riscvConfig.encode Initial274.lines [] true = (Reencode0_274.lines, 230004, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_274_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

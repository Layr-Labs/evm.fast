import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_428
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_428
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_428_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 348316 riscvConfig.encode Initial428.lines [] true = (Reencode0_428.lines, 348980, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_428_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

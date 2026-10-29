import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_139
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_139
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_139_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 30272 riscvConfig.encode Initial139.lines [] true = (Reencode0_139.lines, 30448, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_139_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

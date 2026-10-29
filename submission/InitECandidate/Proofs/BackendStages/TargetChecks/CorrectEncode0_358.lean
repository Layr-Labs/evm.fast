import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_358
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_358
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_358_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 301704 riscvConfig.encode Initial358.lines [] true = (Reencode0_358.lines, 301956, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_358_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

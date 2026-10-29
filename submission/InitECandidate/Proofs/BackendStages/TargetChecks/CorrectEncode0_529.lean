import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_529
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_529
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_529_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 431352 riscvConfig.encode Initial529.lines [] true = (Reencode0_529.lines, 431644, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_529_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_216
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_216
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_216_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 132176 riscvConfig.encode Initial216.lines [] true = (Reencode0_216.lines, 132244, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_216_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

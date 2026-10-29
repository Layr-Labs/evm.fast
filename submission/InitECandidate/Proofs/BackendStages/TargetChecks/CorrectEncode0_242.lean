import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_242
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_242
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_242_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 189300 riscvConfig.encode Initial242.lines [] true = (Reencode0_242.lines, 190228, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_242_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_332
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_332
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_332_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 282728 riscvConfig.encode Initial332.lines [] true = (Reencode0_332.lines, 283804, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_332_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

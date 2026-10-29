import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_291
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_291
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_291_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 249496 riscvConfig.encode Initial291.lines [] true = (Reencode0_291.lines, 249796, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_291_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

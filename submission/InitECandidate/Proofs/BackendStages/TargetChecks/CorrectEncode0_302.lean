import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_302
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_302
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_302_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 256152 riscvConfig.encode Initial302.lines [] true = (Reencode0_302.lines, 258800, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_302_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

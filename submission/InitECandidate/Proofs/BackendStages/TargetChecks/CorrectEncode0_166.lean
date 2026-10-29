import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_166
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_166
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_166_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 99244 riscvConfig.encode Initial166.lines [] true = (Reencode0_166.lines, 99596, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_166_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

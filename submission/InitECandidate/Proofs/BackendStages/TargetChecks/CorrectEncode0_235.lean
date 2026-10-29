import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_235
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_235
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_235_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 182084 riscvConfig.encode Initial235.lines [] true = (Reencode0_235.lines, 184728, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_235_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_264
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_264
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_264_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 217816 riscvConfig.encode Initial264.lines [] true = (Reencode0_264.lines, 218684, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_264_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

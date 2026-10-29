import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_503
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_503
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_503_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 408488 riscvConfig.encode Initial503.lines [] true = (Reencode0_503.lines, 409360, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_503_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

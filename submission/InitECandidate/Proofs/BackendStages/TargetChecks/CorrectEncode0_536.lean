import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_536
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_536
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_536_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 438048 riscvConfig.encode Initial536.lines [] true = (Reencode0_536.lines, 439388, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_536_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

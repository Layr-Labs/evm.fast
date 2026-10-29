import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_227
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_227
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_227_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 154624 riscvConfig.encode Initial227.lines [] true = (Reencode0_227.lines, 161200, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_227_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

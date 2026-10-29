import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_109
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_109
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_109_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 13100 riscvConfig.encode Initial109.lines [] true = (Reencode0_109.lines, 13160, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_109_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

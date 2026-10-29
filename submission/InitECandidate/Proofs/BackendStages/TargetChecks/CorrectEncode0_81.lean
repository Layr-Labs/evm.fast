import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_81
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_81
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_81_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 9196 riscvConfig.encode Initial81.lines [] true = (Reencode0_81.lines, 9260, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_81_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

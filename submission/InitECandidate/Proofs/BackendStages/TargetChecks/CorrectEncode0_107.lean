import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_107
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_107
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_107_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 12908 riscvConfig.encode Initial107.lines [] true = (Reencode0_107.lines, 12968, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_107_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

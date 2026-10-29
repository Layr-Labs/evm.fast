import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_120
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_120
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_120_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 14492 riscvConfig.encode Initial120.lines [] true = (Reencode0_120.lines, 16208, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_120_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_306
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_306
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_306_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 260792 riscvConfig.encode Reencode0_306.lines [] true = (Reencode1_306.lines, 261808, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_306_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

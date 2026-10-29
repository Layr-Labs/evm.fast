import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_504
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_504
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_504_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 409360 riscvConfig.encode Reencode0_504.lines [] true = (Reencode1_504.lines, 410400, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_504_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

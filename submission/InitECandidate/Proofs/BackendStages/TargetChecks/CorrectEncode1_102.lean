import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_102
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_102
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_102_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 12340 riscvConfig.encode Reencode0_102.lines [] true = (Reencode1_102.lines, 12388, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_102_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

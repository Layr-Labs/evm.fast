import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_157
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_157
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_157_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 90528 riscvConfig.encode Reencode0_157.lines [] true = (Reencode1_157.lines, 90960, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_157_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

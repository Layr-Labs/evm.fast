import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_195
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_195
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_195_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 111748 riscvConfig.encode Reencode0_195.lines [] true = (Reencode1_195.lines, 111764, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_195_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

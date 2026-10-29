import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_172
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_172
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_172_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 101996 riscvConfig.encode Reencode0_172.lines [] true = (Reencode1_172.lines, 102056, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_172_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

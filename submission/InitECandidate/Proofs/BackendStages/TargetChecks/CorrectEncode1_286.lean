import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_286
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_286
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_286_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 247360 riscvConfig.encode Reencode0_286.lines [] true = (Reencode1_286.lines, 247380, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_286_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

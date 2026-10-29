import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_98
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_98
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_98_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 12028 riscvConfig.encode Reencode0_98.lines [] true = (Reencode1_98.lines, 12260, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_98_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_468
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_468
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_468_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 392260 riscvConfig.encode Reencode0_468.lines [] true = (Reencode1_468.lines, 392432, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_468_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

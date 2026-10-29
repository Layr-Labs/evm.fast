import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_456
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_456
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_456_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 370044 riscvConfig.encode Reencode0_456.lines [] true = (Reencode1_456.lines, 370224, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_456_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_557
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_557
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_557_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 458276 riscvConfig.encode Reencode0_557.lines [] true = (Reencode1_557.lines, 458720, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_557_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

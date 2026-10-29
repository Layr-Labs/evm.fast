import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_416
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_416
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_416_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 340932 riscvConfig.encode Reencode0_416.lines [] true = (Reencode1_416.lines, 341344, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_416_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

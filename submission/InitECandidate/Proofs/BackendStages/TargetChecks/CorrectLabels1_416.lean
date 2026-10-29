import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_416
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_416
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_416_eq : LabToTarget.sectionLabels 340932 Reencode0_416.lines [] = (341344, localLabels1_416) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_416_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

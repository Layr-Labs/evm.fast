import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_416
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_416
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_416_eq : LabToTarget.sectionLabels 340928 Initial416.lines [] = (341340, localLabels0_416) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_416_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

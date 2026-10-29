import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_416
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_416_eq : LabToTarget.sectionLabels 340928 Initial416.lines [] = (341340, localLabels0_416) := by
  with_unfolding_all rfl
#print axioms localLabels0_416_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_438
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_438
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_438_eq : LabToTarget.sectionLabels 354744 Initial438.lines [] = (355396, localLabels0_438) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_438_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

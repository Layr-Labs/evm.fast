import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_588
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_588
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_588_eq : LabToTarget.sectionLabels 488020 Initial588.lines [] = (490792, localLabels0_588) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_588_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

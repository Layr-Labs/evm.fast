import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_353
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_353
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_353_eq : LabToTarget.sectionLabels 300784 Initial353.lines [] = (300816, localLabels0_353) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_353_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

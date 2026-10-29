import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_422
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_422
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_422_eq : LabToTarget.sectionLabels 344272 Initial422.lines [] = (344576, localLabels0_422) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_422_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

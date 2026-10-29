import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_311
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_311
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_311_eq : LabToTarget.sectionLabels 263268 Initial311.lines [] = (263924, localLabels0_311) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_311_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

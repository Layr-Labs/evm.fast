import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_337
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_337
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_337_eq : LabToTarget.sectionLabels 289272 Initial337.lines [] = (289572, localLabels0_337) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_337_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_461
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_461
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_461_eq : LabToTarget.sectionLabels 389888 Initial461.lines [] = (391100, localLabels0_461) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_461_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

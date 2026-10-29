import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_427
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_427
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_427_eq : LabToTarget.sectionLabels 346700 Initial427.lines [] = (348312, localLabels0_427) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_427_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

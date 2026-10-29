import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_256
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_256
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_256_eq : LabToTarget.sectionLabels 202916 Initial256.lines [] = (206600, localLabels0_256) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_256_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

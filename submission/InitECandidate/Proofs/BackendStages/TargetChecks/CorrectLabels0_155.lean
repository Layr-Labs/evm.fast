import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_155
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_155
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_155_eq : LabToTarget.sectionLabels 87392 Initial155.lines [] = (88628, localLabels0_155) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_155_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

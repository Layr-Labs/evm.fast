import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_269
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_269
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_269_eq : LabToTarget.sectionLabels 223648 Initial269.lines [] = (223976, localLabels0_269) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_269_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

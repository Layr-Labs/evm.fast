import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_122
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_122
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_122_eq : LabToTarget.sectionLabels 20300 Initial122.lines [] = (20596, localLabels0_122) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_122_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

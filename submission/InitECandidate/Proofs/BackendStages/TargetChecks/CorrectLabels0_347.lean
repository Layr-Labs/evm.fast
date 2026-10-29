import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_347
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_347
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_347_eq : LabToTarget.sectionLabels 300632 Initial347.lines [] = (300648, localLabels0_347) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_347_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

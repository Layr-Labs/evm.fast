import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_477
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_477
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_477_eq : LabToTarget.sectionLabels 394108 Initial477.lines [] = (394288, localLabels0_477) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_477_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

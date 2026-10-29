import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_571
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_571
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_571_eq : LabToTarget.sectionLabels 472784 Initial571.lines [] = (473352, localLabels0_571) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_571_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

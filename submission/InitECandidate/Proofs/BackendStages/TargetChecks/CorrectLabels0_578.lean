import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_578
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_578
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_578_eq : LabToTarget.sectionLabels 477868 Initial578.lines [] = (478400, localLabels0_578) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_578_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

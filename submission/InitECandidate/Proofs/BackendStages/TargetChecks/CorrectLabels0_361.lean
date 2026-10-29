import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_361
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_361
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_361_eq : LabToTarget.sectionLabels 302500 Initial361.lines [] = (304216, localLabels0_361) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_361_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_364
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_364
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_364_eq : LabToTarget.sectionLabels 305548 Initial364.lines [] = (306000, localLabels0_364) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_364_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

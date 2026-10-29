import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_163
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_163
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_163_eq : LabToTarget.sectionLabels 95652 Initial163.lines [] = (97924, localLabels0_163) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_163_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

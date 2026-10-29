import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_184
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_184
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_184_eq : LabToTarget.sectionLabels 105672 Initial184.lines [] = (105860, localLabels0_184) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_184_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

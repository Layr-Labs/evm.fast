import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_294
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_294
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_294_eq : LabToTarget.sectionLabels 251024 Initial294.lines [] = (251240, localLabels0_294) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_294_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_476
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_476
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_476_eq : LabToTarget.sectionLabels 393468 Initial476.lines [] = (394108, localLabels0_476) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_476_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

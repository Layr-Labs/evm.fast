import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_323
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_323
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_323_eq : LabToTarget.sectionLabels 277572 Initial323.lines [] = (277660, localLabels0_323) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_323_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

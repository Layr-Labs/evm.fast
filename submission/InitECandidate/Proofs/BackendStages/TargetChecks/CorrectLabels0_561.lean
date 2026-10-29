import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_561
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_561
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_561_eq : LabToTarget.sectionLabels 462896 Initial561.lines [] = (463096, localLabels0_561) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_561_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

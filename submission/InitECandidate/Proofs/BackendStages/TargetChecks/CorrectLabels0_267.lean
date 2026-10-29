import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_267
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_267
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_267_eq : LabToTarget.sectionLabels 222076 Initial267.lines [] = (223244, localLabels0_267) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_267_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

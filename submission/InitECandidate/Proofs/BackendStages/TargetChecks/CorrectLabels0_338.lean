import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_338
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_338
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_338_eq : LabToTarget.sectionLabels 289572 Initial338.lines [] = (289792, localLabels0_338) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_338_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

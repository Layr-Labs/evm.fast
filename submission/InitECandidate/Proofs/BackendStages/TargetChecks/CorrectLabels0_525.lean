import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_525
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_525
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_525_eq : LabToTarget.sectionLabels 428928 Initial525.lines [] = (429452, localLabels0_525) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_525_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_234
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_234
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_234_eq : LabToTarget.sectionLabels 172420 Initial234.lines [] = (182080, localLabels0_234) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_234_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

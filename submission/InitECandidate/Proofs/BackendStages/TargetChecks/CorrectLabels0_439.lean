import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_439
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_439
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_439_eq : LabToTarget.sectionLabels 355396 Initial439.lines [] = (356640, localLabels0_439) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_439_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_126
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_126
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_126_eq : LabToTarget.sectionLabels 21004 Initial126.lines [] = (21092, localLabels0_126) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_126_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

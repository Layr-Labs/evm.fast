import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_79
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_79
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_79_eq : LabToTarget.sectionLabels 7856 Initial79.lines [] = (9108, localLabels0_79) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_79_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_5
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_5
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_5_eq : LabToTarget.sectionLabels 864 Initial5.lines [] = (908, localLabels0_5) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_5_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_154
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_154
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_154_eq : LabToTarget.sectionLabels 57480 Reencode0_154.lines [] = (87396, localLabels1_154) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_154_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

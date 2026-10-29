import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_329
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_329
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_329_eq : LabToTarget.sectionLabels 280844 Reencode0_329.lines [] = (281716, localLabels1_329) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_329_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_211
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_211
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_211_eq : LabToTarget.sectionLabels 131032 Reencode0_211.lines [] = (131344, localLabels1_211) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_211_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

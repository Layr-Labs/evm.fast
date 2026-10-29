import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_211
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_211
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_211_eq : LabToTarget.sectionLabels 131028 Initial211.lines [] = (131340, localLabels0_211) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_211_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

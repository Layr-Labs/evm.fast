import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_378
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_378
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_378_eq : LabToTarget.sectionLabels 313744 Reencode0_378.lines [] = (317408, localLabels1_378) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_378_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

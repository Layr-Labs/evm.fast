import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_378
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_378
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_378_eq : LabToTarget.sectionLabels 313740 Initial378.lines [] = (317404, localLabels0_378) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_378_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct

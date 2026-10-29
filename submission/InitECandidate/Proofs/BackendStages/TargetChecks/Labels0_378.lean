import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_378
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_378_eq : LabToTarget.sectionLabels 313740 Initial378.lines [] = (317404, localLabels0_378) := by
  with_unfolding_all rfl
#print axioms localLabels0_378_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

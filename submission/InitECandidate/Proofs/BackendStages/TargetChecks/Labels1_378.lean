import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_378
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_378_eq : LabToTarget.sectionLabels 313744 Reencode0_378.lines [] = (317408, localLabels1_378) := by
  with_unfolding_all rfl
#print axioms localLabels1_378_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

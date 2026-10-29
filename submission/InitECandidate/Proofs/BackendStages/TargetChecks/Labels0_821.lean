import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_821
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_821_eq : LabToTarget.sectionLabels 974808 Initial821.lines [] = (975384, localLabels0_821) := by
  with_unfolding_all rfl
#print axioms localLabels0_821_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

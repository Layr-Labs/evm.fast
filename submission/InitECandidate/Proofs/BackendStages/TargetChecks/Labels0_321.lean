import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_321
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_321_eq : LabToTarget.sectionLabels 274356 Initial321.lines [] = (275188, localLabels0_321) := by
  with_unfolding_all rfl
#print axioms localLabels0_321_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

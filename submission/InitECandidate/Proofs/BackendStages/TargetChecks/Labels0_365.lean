import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_365
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_365_eq : LabToTarget.sectionLabels 306000 Initial365.lines [] = (307756, localLabels0_365) := by
  with_unfolding_all rfl
#print axioms localLabels0_365_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

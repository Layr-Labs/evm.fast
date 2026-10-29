import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_740
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_740_eq : LabToTarget.sectionLabels 808860 Initial740.lines [] = (810404, localLabels0_740) := by
  with_unfolding_all rfl
#print axioms localLabels0_740_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

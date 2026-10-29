import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_290
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_290_eq : LabToTarget.sectionLabels 249340 Initial290.lines [] = (249492, localLabels0_290) := by
  with_unfolding_all rfl
#print axioms localLabels0_290_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

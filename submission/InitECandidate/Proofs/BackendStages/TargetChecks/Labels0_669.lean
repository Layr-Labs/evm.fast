import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_669
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_669_eq : LabToTarget.sectionLabels 660004 Initial669.lines [] = (662136, localLabels0_669) := by
  with_unfolding_all rfl
#print axioms localLabels0_669_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

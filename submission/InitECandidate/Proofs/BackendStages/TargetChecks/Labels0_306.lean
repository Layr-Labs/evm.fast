import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_306
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_306_eq : LabToTarget.sectionLabels 260788 Initial306.lines [] = (261804, localLabels0_306) := by
  with_unfolding_all rfl
#print axioms localLabels0_306_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

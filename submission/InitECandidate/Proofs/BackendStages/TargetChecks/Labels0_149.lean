import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_149
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_149_eq : LabToTarget.sectionLabels 36880 Initial149.lines [] = (37220, localLabels0_149) := by
  with_unfolding_all rfl
#print axioms localLabels0_149_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

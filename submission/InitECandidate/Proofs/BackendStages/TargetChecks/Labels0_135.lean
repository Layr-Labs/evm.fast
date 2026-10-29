import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_135
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_135_eq : LabToTarget.sectionLabels 27760 Initial135.lines [] = (28336, localLabels0_135) := by
  with_unfolding_all rfl
#print axioms localLabels0_135_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_159
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_159_eq : LabToTarget.sectionLabels 92220 Initial159.lines [] = (92240, localLabels0_159) := by
  with_unfolding_all rfl
#print axioms localLabels0_159_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

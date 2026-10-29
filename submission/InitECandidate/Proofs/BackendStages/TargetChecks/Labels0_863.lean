import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_863
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_863_eq : LabToTarget.sectionLabels 1039580 Initial863.lines [] = (1055564, localLabels0_863) := by
  with_unfolding_all rfl
#print axioms localLabels0_863_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

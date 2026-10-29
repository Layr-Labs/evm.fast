import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_863
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_863_eq : LabToTarget.sectionLabels 1039604 Reencode0_863.lines [] = (1055776, localLabels1_863) := by
  with_unfolding_all rfl
#print axioms localLabels1_863_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

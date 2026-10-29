import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_802
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_802_eq : LabToTarget.sectionLabels 937696 Initial802.lines [] = (939412, localLabels0_802) := by
  with_unfolding_all rfl
#print axioms localLabels0_802_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

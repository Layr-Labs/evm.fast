import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_745
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_745_eq : LabToTarget.sectionLabels 815456 Initial745.lines [] = (815968, localLabels0_745) := by
  with_unfolding_all rfl
#print axioms localLabels0_745_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

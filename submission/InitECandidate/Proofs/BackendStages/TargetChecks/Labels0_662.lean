import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_662
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_662_eq : LabToTarget.sectionLabels 654276 Initial662.lines [] = (654384, localLabels0_662) := by
  with_unfolding_all rfl
#print axioms localLabels0_662_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

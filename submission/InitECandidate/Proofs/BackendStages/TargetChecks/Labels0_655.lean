import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_655
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_655_eq : LabToTarget.sectionLabels 630912 Initial655.lines [] = (637616, localLabels0_655) := by
  with_unfolding_all rfl
#print axioms localLabels0_655_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_827
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_827_eq : LabToTarget.sectionLabels 979420 Initial827.lines [] = (980000, localLabels0_827) := by
  with_unfolding_all rfl
#print axioms localLabels0_827_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_177
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_177_eq : LabToTarget.sectionLabels 103140 Initial177.lines [] = (103556, localLabels0_177) := by
  with_unfolding_all rfl
#print axioms localLabels0_177_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

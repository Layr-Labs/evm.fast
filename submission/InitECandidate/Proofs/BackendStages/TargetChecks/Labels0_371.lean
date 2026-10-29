import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_371
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_371_eq : LabToTarget.sectionLabels 312736 Initial371.lines [] = (312760, localLabels0_371) := by
  with_unfolding_all rfl
#print axioms localLabels0_371_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

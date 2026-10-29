import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_647
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_647_eq : LabToTarget.sectionLabels 611544 Initial647.lines [] = (611612, localLabels0_647) := by
  with_unfolding_all rfl
#print axioms localLabels0_647_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

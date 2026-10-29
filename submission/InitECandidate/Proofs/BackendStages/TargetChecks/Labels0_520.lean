import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_520
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_520_eq : LabToTarget.sectionLabels 423528 Initial520.lines [] = (424572, localLabels0_520) := by
  with_unfolding_all rfl
#print axioms localLabels0_520_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

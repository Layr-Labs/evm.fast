import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_331
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_331_eq : LabToTarget.sectionLabels 282232 Initial331.lines [] = (282724, localLabels0_331) := by
  with_unfolding_all rfl
#print axioms localLabels0_331_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

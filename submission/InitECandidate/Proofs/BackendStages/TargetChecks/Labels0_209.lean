import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_209
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_209_eq : LabToTarget.sectionLabels 127276 Initial209.lines [] = (127324, localLabels0_209) := by
  with_unfolding_all rfl
#print axioms localLabels0_209_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

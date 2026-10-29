import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_388
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_388_eq : LabToTarget.sectionLabels 326036 Initial388.lines [] = (326920, localLabels0_388) := by
  with_unfolding_all rfl
#print axioms localLabels0_388_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

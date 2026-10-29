import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_325
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_325_eq : LabToTarget.sectionLabels 279600 Initial325.lines [] = (279984, localLabels0_325) := by
  with_unfolding_all rfl
#print axioms localLabels0_325_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

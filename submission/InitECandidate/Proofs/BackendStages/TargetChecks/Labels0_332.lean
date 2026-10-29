import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_332
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_332_eq : LabToTarget.sectionLabels 282724 Initial332.lines [] = (283800, localLabels0_332) := by
  with_unfolding_all rfl
#print axioms localLabels0_332_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

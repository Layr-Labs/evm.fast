import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_248
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_248_eq : LabToTarget.sectionLabels 191996 Initial248.lines [] = (195048, localLabels0_248) := by
  with_unfolding_all rfl
#print axioms localLabels0_248_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

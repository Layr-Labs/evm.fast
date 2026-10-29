import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_295
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_295_eq : LabToTarget.sectionLabels 251240 Initial295.lines [] = (251472, localLabels0_295) := by
  with_unfolding_all rfl
#print axioms localLabels0_295_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

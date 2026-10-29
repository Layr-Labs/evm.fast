import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_335
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_335_eq : LabToTarget.sectionLabels 288728 Initial335.lines [] = (289056, localLabels0_335) := by
  with_unfolding_all rfl
#print axioms localLabels0_335_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

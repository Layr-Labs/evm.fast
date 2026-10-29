import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_764
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_764_eq : LabToTarget.sectionLabels 834996 Initial764.lines [] = (835304, localLabels0_764) := by
  with_unfolding_all rfl
#print axioms localLabels0_764_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

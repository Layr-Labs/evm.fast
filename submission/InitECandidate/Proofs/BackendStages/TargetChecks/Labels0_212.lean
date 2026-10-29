import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_212
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_212_eq : LabToTarget.sectionLabels 131340 Initial212.lines [] = (132004, localLabels0_212) := by
  with_unfolding_all rfl
#print axioms localLabels0_212_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_855
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_855_eq : LabToTarget.sectionLabels 1029324 Initial855.lines [] = (1029364, localLabels0_855) := by
  with_unfolding_all rfl
#print axioms localLabels0_855_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

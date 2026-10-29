import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_503
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_503_eq : LabToTarget.sectionLabels 408484 Initial503.lines [] = (409356, localLabels0_503) := by
  with_unfolding_all rfl
#print axioms localLabels0_503_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

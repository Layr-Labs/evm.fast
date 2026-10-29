import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_156
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_156_eq : LabToTarget.sectionLabels 88628 Initial156.lines [] = (90524, localLabels0_156) := by
  with_unfolding_all rfl
#print axioms localLabels0_156_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

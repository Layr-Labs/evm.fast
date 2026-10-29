import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_712
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_712_eq : LabToTarget.sectionLabels 771088 Initial712.lines [] = (771660, localLabels0_712) := by
  with_unfolding_all rfl
#print axioms localLabels0_712_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

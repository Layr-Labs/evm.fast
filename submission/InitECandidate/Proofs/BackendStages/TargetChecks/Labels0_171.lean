import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_171
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_171_eq : LabToTarget.sectionLabels 101508 Initial171.lines [] = (101992, localLabels0_171) := by
  with_unfolding_all rfl
#print axioms localLabels0_171_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

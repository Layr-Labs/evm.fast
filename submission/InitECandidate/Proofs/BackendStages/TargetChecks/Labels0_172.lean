import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_172
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_172_eq : LabToTarget.sectionLabels 101992 Initial172.lines [] = (102052, localLabels0_172) := by
  with_unfolding_all rfl
#print axioms localLabels0_172_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

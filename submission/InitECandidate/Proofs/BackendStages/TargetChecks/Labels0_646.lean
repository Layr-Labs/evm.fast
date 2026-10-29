import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_646
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_646_eq : LabToTarget.sectionLabels 606084 Initial646.lines [] = (611544, localLabels0_646) := by
  with_unfolding_all rfl
#print axioms localLabels0_646_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_609
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_609_eq : LabToTarget.sectionLabels 533736 Initial609.lines [] = (533836, localLabels0_609) := by
  with_unfolding_all rfl
#print axioms localLabels0_609_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

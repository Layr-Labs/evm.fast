import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_595
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_595_eq : LabToTarget.sectionLabels 504212 Initial595.lines [] = (518428, localLabels0_595) := by
  with_unfolding_all rfl
#print axioms localLabels0_595_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

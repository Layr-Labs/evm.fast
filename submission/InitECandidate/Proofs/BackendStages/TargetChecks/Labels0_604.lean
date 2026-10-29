import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_604
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_604_eq : LabToTarget.sectionLabels 528488 Initial604.lines [] = (528568, localLabels0_604) := by
  with_unfolding_all rfl
#print axioms localLabels0_604_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

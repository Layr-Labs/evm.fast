import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_696
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_696_eq : LabToTarget.sectionLabels 714036 Initial696.lines [] = (719580, localLabels0_696) := by
  with_unfolding_all rfl
#print axioms localLabels0_696_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_399
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_399_eq : LabToTarget.sectionLabels 330960 Initial399.lines [] = (331168, localLabels0_399) := by
  with_unfolding_all rfl
#print axioms localLabels0_399_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_583
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_583_eq : LabToTarget.sectionLabels 480656 Initial583.lines [] = (481188, localLabels0_583) := by
  with_unfolding_all rfl
#print axioms localLabels0_583_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

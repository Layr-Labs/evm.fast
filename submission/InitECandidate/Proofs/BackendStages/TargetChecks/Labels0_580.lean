import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_580
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_580_eq : LabToTarget.sectionLabels 478932 Initial580.lines [] = (479464, localLabels0_580) := by
  with_unfolding_all rfl
#print axioms localLabels0_580_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

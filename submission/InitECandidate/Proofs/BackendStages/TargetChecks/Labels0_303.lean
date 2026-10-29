import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_303
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_303_eq : LabToTarget.sectionLabels 258796 Initial303.lines [] = (259136, localLabels0_303) := by
  with_unfolding_all rfl
#print axioms localLabels0_303_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

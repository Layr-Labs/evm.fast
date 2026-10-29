import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_340
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_340_eq : LabToTarget.sectionLabels 290044 Initial340.lines [] = (290312, localLabels0_340) := by
  with_unfolding_all rfl
#print axioms localLabels0_340_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_324
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_324_eq : LabToTarget.sectionLabels 277660 Initial324.lines [] = (279600, localLabels0_324) := by
  with_unfolding_all rfl
#print axioms localLabels0_324_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

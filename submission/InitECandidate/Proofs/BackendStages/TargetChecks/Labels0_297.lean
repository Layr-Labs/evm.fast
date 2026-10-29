import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_297
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_297_eq : LabToTarget.sectionLabels 251776 Initial297.lines [] = (252060, localLabels0_297) := by
  with_unfolding_all rfl
#print axioms localLabels0_297_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_269
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_269_eq : LabToTarget.sectionLabels 223648 Initial269.lines [] = (223976, localLabels0_269) := by
  with_unfolding_all rfl
#print axioms localLabels0_269_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

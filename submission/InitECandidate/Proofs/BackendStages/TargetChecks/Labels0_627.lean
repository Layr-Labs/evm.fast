import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_627
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_627_eq : LabToTarget.sectionLabels 579408 Initial627.lines [] = (579696, localLabels0_627) := by
  with_unfolding_all rfl
#print axioms localLabels0_627_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

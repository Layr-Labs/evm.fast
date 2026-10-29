import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_259
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_259_eq : LabToTarget.sectionLabels 208072 Initial259.lines [] = (213292, localLabels0_259) := by
  with_unfolding_all rfl
#print axioms localLabels0_259_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

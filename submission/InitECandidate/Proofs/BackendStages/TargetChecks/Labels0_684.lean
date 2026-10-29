import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_684
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_684_eq : LabToTarget.sectionLabels 679824 Initial684.lines [] = (682096, localLabels0_684) := by
  with_unfolding_all rfl
#print axioms localLabels0_684_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

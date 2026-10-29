import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_729
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_729_eq : LabToTarget.sectionLabels 802188 Initial729.lines [] = (802364, localLabels0_729) := by
  with_unfolding_all rfl
#print axioms localLabels0_729_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

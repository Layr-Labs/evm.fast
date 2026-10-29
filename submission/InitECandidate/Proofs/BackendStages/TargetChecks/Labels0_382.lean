import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_382
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_382_eq : LabToTarget.sectionLabels 319820 Initial382.lines [] = (320596, localLabels0_382) := by
  with_unfolding_all rfl
#print axioms localLabels0_382_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

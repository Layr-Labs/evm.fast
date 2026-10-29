import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_852
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_852_eq : LabToTarget.sectionLabels 1019332 Initial852.lines [] = (1023128, localLabels0_852) := by
  with_unfolding_all rfl
#print axioms localLabels0_852_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

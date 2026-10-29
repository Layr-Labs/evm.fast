import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_222
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_222_eq : LabToTarget.sectionLabels 133732 Initial222.lines [] = (133764, localLabels0_222) := by
  with_unfolding_all rfl
#print axioms localLabels0_222_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

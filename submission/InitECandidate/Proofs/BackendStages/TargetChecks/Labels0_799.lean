import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_799
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_799_eq : LabToTarget.sectionLabels 925040 Initial799.lines [] = (926032, localLabels0_799) := by
  with_unfolding_all rfl
#print axioms localLabels0_799_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

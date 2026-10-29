import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_133
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_133_eq : LabToTarget.sectionLabels 26408 Initial133.lines [] = (27084, localLabels0_133) := by
  with_unfolding_all rfl
#print axioms localLabels0_133_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

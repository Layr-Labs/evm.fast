import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_69
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_69_eq : LabToTarget.sectionLabels 6016 Initial69.lines [] = (6044, localLabels0_69) := by
  with_unfolding_all rfl
#print axioms localLabels0_69_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

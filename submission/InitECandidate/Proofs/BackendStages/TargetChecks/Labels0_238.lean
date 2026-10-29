import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_238
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_238_eq : LabToTarget.sectionLabels 186876 Initial238.lines [] = (187192, localLabels0_238) := by
  with_unfolding_all rfl
#print axioms localLabels0_238_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_837
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_837_eq : LabToTarget.sectionLabels 992200 Initial837.lines [] = (995120, localLabels0_837) := by
  with_unfolding_all rfl
#print axioms localLabels0_837_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

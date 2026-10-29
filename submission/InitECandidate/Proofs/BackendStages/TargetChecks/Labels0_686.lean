import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_686
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_686_eq : LabToTarget.sectionLabels 688936 Initial686.lines [] = (689876, localLabels0_686) := by
  with_unfolding_all rfl
#print axioms localLabels0_686_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

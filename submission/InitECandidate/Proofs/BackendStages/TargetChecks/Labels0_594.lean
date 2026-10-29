import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_594
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_594_eq : LabToTarget.sectionLabels 501692 Initial594.lines [] = (504212, localLabels0_594) := by
  with_unfolding_all rfl
#print axioms localLabels0_594_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

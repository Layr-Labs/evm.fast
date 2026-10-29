import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_87
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_87_eq : LabToTarget.sectionLabels 9816 Initial87.lines [] = (10132, localLabels0_87) := by
  with_unfolding_all rfl
#print axioms localLabels0_87_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

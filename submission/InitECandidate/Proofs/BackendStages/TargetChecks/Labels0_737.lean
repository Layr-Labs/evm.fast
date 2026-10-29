import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_737
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_737_eq : LabToTarget.sectionLabels 805288 Initial737.lines [] = (805304, localLabels0_737) := by
  with_unfolding_all rfl
#print axioms localLabels0_737_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

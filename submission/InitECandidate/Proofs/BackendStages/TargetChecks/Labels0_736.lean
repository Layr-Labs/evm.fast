import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_736
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_736_eq : LabToTarget.sectionLabels 804700 Initial736.lines [] = (805288, localLabels0_736) := by
  with_unfolding_all rfl
#print axioms localLabels0_736_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

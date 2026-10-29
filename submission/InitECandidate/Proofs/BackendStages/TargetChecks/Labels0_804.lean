import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_804
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_804_eq : LabToTarget.sectionLabels 942184 Initial804.lines [] = (943068, localLabels0_804) := by
  with_unfolding_all rfl
#print axioms localLabels0_804_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_148
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_148_eq : LabToTarget.sectionLabels 36320 Initial148.lines [] = (36880, localLabels0_148) := by
  with_unfolding_all rfl
#print axioms localLabels0_148_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

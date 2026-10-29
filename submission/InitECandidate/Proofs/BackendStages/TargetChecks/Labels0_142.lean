import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_142
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_142_eq : LabToTarget.sectionLabels 32184 Initial142.lines [] = (32472, localLabels0_142) := by
  with_unfolding_all rfl
#print axioms localLabels0_142_eq
end InitECandidate.Proofs.BackendStages.TargetChecks

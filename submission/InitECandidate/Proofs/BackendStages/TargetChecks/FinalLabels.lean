import InitECandidate.Proofs.BackendStages.TargetLabelsFinal
import InitECandidate.Proofs.CompilerConfigLiteral
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem labelsFinal_eq_baseline : Target.labelsFinal = InitE.baselineLabConfig.labels := by
  with_unfolding_all rfl
#print axioms labelsFinal_eq_baseline
end InitECandidate.Proofs.BackendStages.TargetChecks

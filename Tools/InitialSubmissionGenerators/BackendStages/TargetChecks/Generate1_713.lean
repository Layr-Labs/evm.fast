import Tools.GenBackendTargetStages
import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_713
import InitECandidate.Proofs.BackendStages.TargetLabels1
import InitECandidate.Proofs.BackendStages.TargetFfis
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.BackendTargetGenerator.prepare env 1 713 678356 InitECandidate.Proofs.BackendStages.Target.labels1 InitECandidate.Proofs.BackendStages.Target.ffis InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_713

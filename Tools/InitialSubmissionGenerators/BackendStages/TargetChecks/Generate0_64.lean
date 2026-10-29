import Tools.GenBackendTargetStages
import InitECandidate.Proofs.BackendStages.Encoded64
import InitECandidate.Proofs.BackendStages.TargetLabels0
import InitECandidate.Proofs.BackendStages.TargetFfis
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.BackendTargetGenerator.prepare env 0 64 1112 InitECandidate.Proofs.BackendStages.Target.labels0 InitECandidate.Proofs.BackendStages.Target.ffis InitECandidate.Proofs.BackendStages.Encoded64

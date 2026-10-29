import Tools.GenBackendTargetStages
import InitECandidate.Proofs.BackendStages.Native
import InitECandidate.Proofs.BackendStages.TargetLabels0
import InitECandidate.Proofs.BackendStages.TargetLabels1
import InitECandidate.Proofs.BackendStages.TargetFfis
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.BackendTargetGenerator.prepareCorrectAll env InitECandidate.Proofs.BackendStages.Native.stack InitECandidate.Proofs.BackendStages.Target.labels0 InitECandidate.Proofs.BackendStages.Target.labels1 InitECandidate.Proofs.BackendStages.Target.ffis

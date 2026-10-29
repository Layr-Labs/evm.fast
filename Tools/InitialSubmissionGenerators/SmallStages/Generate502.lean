import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles502
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 502 InitECandidate.Proofs.WordStages.source502.2.1 InitECandidate.Proofs.WordStages.source502.2.2 InitECandidate.Proofs.SmallStages.Oracles502.oracle502

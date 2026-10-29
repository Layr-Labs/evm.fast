import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles301
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 301 InitECandidate.Proofs.WordStages.source301.2.1 InitECandidate.Proofs.WordStages.source301.2.2 InitECandidate.Proofs.SmallStages.Oracles301.oracle301

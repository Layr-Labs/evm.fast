import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles534
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 534 InitECandidate.Proofs.WordStages.source534.2.1 InitECandidate.Proofs.WordStages.source534.2.2 InitECandidate.Proofs.SmallStages.Oracles534.oracle534

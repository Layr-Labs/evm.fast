import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles638
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 638 InitECandidate.Proofs.WordStages.source638.2.1 InitECandidate.Proofs.WordStages.source638.2.2 InitECandidate.Proofs.SmallStages.Oracles638.oracle638

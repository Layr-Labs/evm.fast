import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles561
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 561 InitECandidate.Proofs.WordStages.source561.2.1 InitECandidate.Proofs.WordStages.source561.2.2 InitECandidate.Proofs.SmallStages.Oracles561.oracle561

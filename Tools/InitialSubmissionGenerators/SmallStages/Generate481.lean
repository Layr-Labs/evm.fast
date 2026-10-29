import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles481
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 481 InitECandidate.Proofs.WordStages.source481.2.1 InitECandidate.Proofs.WordStages.source481.2.2 InitECandidate.Proofs.SmallStages.Oracles481.oracle481

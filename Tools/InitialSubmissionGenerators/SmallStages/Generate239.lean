import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles239
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 239 InitECandidate.Proofs.WordStages.source239.2.1 InitECandidate.Proofs.WordStages.source239.2.2 InitECandidate.Proofs.SmallStages.Oracles239.oracle239

import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles811
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 811 InitECandidate.Proofs.WordStages.source811.2.1 InitECandidate.Proofs.WordStages.source811.2.2 InitECandidate.Proofs.SmallStages.Oracles811.oracle811

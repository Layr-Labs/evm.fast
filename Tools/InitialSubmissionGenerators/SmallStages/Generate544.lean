import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles544
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 544 InitECandidate.Proofs.WordStages.source544.2.1 InitECandidate.Proofs.WordStages.source544.2.2 InitECandidate.Proofs.SmallStages.Oracles544.oracle544

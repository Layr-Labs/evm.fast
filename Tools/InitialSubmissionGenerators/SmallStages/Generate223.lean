import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles223
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 223 InitECandidate.Proofs.WordStages.source223.2.1 InitECandidate.Proofs.WordStages.source223.2.2 InitECandidate.Proofs.SmallStages.Oracles223.oracle223

import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles542
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 542 InitECandidate.Proofs.WordStages.source542.2.1 InitECandidate.Proofs.WordStages.source542.2.2 InitECandidate.Proofs.SmallStages.Oracles542.oracle542

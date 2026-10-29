import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles608
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 608 InitECandidate.Proofs.WordStages.source608.2.1 InitECandidate.Proofs.WordStages.source608.2.2 InitECandidate.Proofs.SmallStages.Oracles608.oracle608

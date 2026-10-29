import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles754
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 754 InitECandidate.Proofs.WordStages.source754.2.1 InitECandidate.Proofs.WordStages.source754.2.2 InitECandidate.Proofs.SmallStages.Oracles754.oracle754

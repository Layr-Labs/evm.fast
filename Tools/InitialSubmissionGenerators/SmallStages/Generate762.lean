import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles762
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 762 InitECandidate.Proofs.WordStages.source762.2.1 InitECandidate.Proofs.WordStages.source762.2.2 InitECandidate.Proofs.SmallStages.Oracles762.oracle762

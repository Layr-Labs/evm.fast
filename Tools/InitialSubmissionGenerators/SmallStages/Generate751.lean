import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles751
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 751 InitECandidate.Proofs.WordStages.source751.2.1 InitECandidate.Proofs.WordStages.source751.2.2 InitECandidate.Proofs.SmallStages.Oracles751.oracle751

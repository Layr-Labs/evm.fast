import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles769
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 769 InitECandidate.Proofs.WordStages.source769.2.1 InitECandidate.Proofs.WordStages.source769.2.2 InitECandidate.Proofs.SmallStages.Oracles769.oracle769

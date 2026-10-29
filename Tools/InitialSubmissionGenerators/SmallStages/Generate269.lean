import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles269
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 269 InitECandidate.Proofs.WordStages.source269.2.1 InitECandidate.Proofs.WordStages.source269.2.2 InitECandidate.Proofs.SmallStages.Oracles269.oracle269

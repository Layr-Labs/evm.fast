import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles281
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 281 InitECandidate.Proofs.WordStages.source281.2.1 InitECandidate.Proofs.WordStages.source281.2.2 InitECandidate.Proofs.SmallStages.Oracles281.oracle281

import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles521
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 521 InitECandidate.Proofs.WordStages.source521.2.1 InitECandidate.Proofs.WordStages.source521.2.2 InitECandidate.Proofs.SmallStages.Oracles521.oracle521

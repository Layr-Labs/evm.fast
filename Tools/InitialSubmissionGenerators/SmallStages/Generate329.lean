import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles329
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 329 InitECandidate.Proofs.WordStages.source329.2.1 InitECandidate.Proofs.WordStages.source329.2.2 InitECandidate.Proofs.SmallStages.Oracles329.oracle329

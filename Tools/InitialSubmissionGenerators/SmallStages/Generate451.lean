import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles451
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 451 InitECandidate.Proofs.WordStages.source451.2.1 InitECandidate.Proofs.WordStages.source451.2.2 InitECandidate.Proofs.SmallStages.Oracles451.oracle451

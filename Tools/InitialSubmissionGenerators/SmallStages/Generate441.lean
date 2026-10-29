import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles441
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 441 InitECandidate.Proofs.WordStages.source441.2.1 InitECandidate.Proofs.WordStages.source441.2.2 InitECandidate.Proofs.SmallStages.Oracles441.oracle441

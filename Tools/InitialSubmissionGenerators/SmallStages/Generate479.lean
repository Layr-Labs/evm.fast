import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles479
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 479 InitECandidate.Proofs.WordStages.source479.2.1 InitECandidate.Proofs.WordStages.source479.2.2 InitECandidate.Proofs.SmallStages.Oracles479.oracle479

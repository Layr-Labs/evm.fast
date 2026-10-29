import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles476
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 476 InitECandidate.Proofs.WordStages.source476.2.1 InitECandidate.Proofs.WordStages.source476.2.2 InitECandidate.Proofs.SmallStages.Oracles476.oracle476

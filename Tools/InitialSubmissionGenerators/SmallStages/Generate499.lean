import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles499
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 499 InitECandidate.Proofs.WordStages.source499.2.1 InitECandidate.Proofs.WordStages.source499.2.2 InitECandidate.Proofs.SmallStages.Oracles499.oracle499

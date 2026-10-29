import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles579
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 579 InitECandidate.Proofs.WordStages.source579.2.1 InitECandidate.Proofs.WordStages.source579.2.2 InitECandidate.Proofs.SmallStages.Oracles579.oracle579

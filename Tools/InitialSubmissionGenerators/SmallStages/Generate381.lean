import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles381
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 381 InitECandidate.Proofs.WordStages.source381.2.1 InitECandidate.Proofs.WordStages.source381.2.2 InitECandidate.Proofs.SmallStages.Oracles381.oracle381

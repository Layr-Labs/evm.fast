import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles361
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 361 InitECandidate.Proofs.WordStages.source361.2.1 InitECandidate.Proofs.WordStages.source361.2.2 InitECandidate.Proofs.SmallStages.Oracles361.oracle361

import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles823
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 823 InitECandidate.Proofs.WordStages.source823.2.1 InitECandidate.Proofs.WordStages.source823.2.2 InitECandidate.Proofs.SmallStages.Oracles823.oracle823

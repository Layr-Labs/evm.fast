import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles551
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 551 InitECandidate.Proofs.WordStages.source551.2.1 InitECandidate.Proofs.WordStages.source551.2.2 InitECandidate.Proofs.SmallStages.Oracles551.oracle551

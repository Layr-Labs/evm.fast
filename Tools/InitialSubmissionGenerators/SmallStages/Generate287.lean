import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles287
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 287 InitECandidate.Proofs.WordStages.source287.2.1 InitECandidate.Proofs.WordStages.source287.2.2 InitECandidate.Proofs.SmallStages.Oracles287.oracle287

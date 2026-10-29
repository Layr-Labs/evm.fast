import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles214
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 214 InitECandidate.Proofs.WordStages.source214.2.1 InitECandidate.Proofs.WordStages.source214.2.2 InitECandidate.Proofs.SmallStages.Oracles214.oracle214

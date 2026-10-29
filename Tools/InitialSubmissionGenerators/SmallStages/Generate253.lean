import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles253
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 253 InitECandidate.Proofs.WordStages.source253.2.1 InitECandidate.Proofs.WordStages.source253.2.2 InitECandidate.Proofs.SmallStages.Oracles253.oracle253

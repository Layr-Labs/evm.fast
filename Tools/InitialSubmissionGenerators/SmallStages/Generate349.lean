import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles349
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 349 InitECandidate.Proofs.WordStages.source349.2.1 InitECandidate.Proofs.WordStages.source349.2.2 InitECandidate.Proofs.SmallStages.Oracles349.oracle349

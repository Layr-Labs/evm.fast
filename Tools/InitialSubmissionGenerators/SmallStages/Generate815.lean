import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles815
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 815 InitECandidate.Proofs.WordStages.source815.2.1 InitECandidate.Proofs.WordStages.source815.2.2 InitECandidate.Proofs.SmallStages.Oracles815.oracle815

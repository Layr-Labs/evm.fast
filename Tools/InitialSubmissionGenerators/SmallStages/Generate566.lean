import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles566
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 566 InitECandidate.Proofs.WordStages.source566.2.1 InitECandidate.Proofs.WordStages.source566.2.2 InitECandidate.Proofs.SmallStages.Oracles566.oracle566

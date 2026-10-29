import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles548
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 548 InitECandidate.Proofs.WordStages.source548.2.1 InitECandidate.Proofs.WordStages.source548.2.2 InitECandidate.Proofs.SmallStages.Oracles548.oracle548

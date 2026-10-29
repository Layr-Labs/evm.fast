import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles593
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 593 InitECandidate.Proofs.WordStages.source593.2.1 InitECandidate.Proofs.WordStages.source593.2.2 InitECandidate.Proofs.SmallStages.Oracles593.oracle593

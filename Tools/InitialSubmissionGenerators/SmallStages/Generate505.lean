import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles505
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 505 InitECandidate.Proofs.WordStages.source505.2.1 InitECandidate.Proofs.WordStages.source505.2.2 InitECandidate.Proofs.SmallStages.Oracles505.oracle505

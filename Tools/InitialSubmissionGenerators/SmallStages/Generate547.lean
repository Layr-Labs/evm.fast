import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles547
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 547 InitECandidate.Proofs.WordStages.source547.2.1 InitECandidate.Proofs.WordStages.source547.2.2 InitECandidate.Proofs.SmallStages.Oracles547.oracle547

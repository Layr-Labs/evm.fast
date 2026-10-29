import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles572
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 572 InitECandidate.Proofs.WordStages.source572.2.1 InitECandidate.Proofs.WordStages.source572.2.2 InitECandidate.Proofs.SmallStages.Oracles572.oracle572

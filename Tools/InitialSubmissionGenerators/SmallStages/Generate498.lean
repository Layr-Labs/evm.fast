import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles498
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 498 InitECandidate.Proofs.WordStages.source498.2.1 InitECandidate.Proofs.WordStages.source498.2.2 InitECandidate.Proofs.SmallStages.Oracles498.oracle498

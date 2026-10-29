import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles432
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 432 InitECandidate.Proofs.WordStages.source432.2.1 InitECandidate.Proofs.WordStages.source432.2.2 InitECandidate.Proofs.SmallStages.Oracles432.oracle432

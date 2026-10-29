import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles473
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 473 InitECandidate.Proofs.WordStages.source473.2.1 InitECandidate.Proofs.WordStages.source473.2.2 InitECandidate.Proofs.SmallStages.Oracles473.oracle473

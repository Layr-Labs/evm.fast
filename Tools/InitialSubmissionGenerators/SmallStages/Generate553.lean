import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles553
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 553 InitECandidate.Proofs.WordStages.source553.2.1 InitECandidate.Proofs.WordStages.source553.2.2 InitECandidate.Proofs.SmallStages.Oracles553.oracle553

import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles465
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 465 InitECandidate.Proofs.WordStages.source465.2.1 InitECandidate.Proofs.WordStages.source465.2.2 InitECandidate.Proofs.SmallStages.Oracles465.oracle465

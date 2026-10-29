import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles596
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 596 InitECandidate.Proofs.WordStages.source596.2.1 InitECandidate.Proofs.WordStages.source596.2.2 InitECandidate.Proofs.SmallStages.Oracles596.oracle596

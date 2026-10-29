import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles562
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 562 InitECandidate.Proofs.WordStages.source562.2.1 InitECandidate.Proofs.WordStages.source562.2.2 InitECandidate.Proofs.SmallStages.Oracles562.oracle562

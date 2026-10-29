import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles833
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 833 InitECandidate.Proofs.WordStages.source833.2.1 InitECandidate.Proofs.WordStages.source833.2.2 InitECandidate.Proofs.SmallStages.Oracles833.oracle833

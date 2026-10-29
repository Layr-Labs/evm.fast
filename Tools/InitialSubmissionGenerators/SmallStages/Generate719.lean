import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles719
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 719 InitECandidate.Proofs.WordStages.source719.2.1 InitECandidate.Proofs.WordStages.source719.2.2 InitECandidate.Proofs.SmallStages.Oracles719.oracle719

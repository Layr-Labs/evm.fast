import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles674
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 674 InitECandidate.Proofs.WordStages.source674.2.1 InitECandidate.Proofs.WordStages.source674.2.2 InitECandidate.Proofs.SmallStages.Oracles674.oracle674

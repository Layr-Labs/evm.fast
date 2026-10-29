import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles853
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 853 InitECandidate.Proofs.WordStages.source853.2.1 InitECandidate.Proofs.WordStages.source853.2.2 InitECandidate.Proofs.SmallStages.Oracles853.oracle853

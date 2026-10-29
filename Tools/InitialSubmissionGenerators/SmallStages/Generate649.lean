import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles649
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 649 InitECandidate.Proofs.WordStages.source649.2.1 InitECandidate.Proofs.WordStages.source649.2.2 InitECandidate.Proofs.SmallStages.Oracles649.oracle649

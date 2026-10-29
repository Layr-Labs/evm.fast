import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles582
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 582 InitECandidate.Proofs.WordStages.source582.2.1 InitECandidate.Proofs.WordStages.source582.2.2 InitECandidate.Proofs.SmallStages.Oracles582.oracle582

import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles401
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 401 InitECandidate.Proofs.WordStages.source401.2.1 InitECandidate.Proofs.WordStages.source401.2.2 InitECandidate.Proofs.SmallStages.Oracles401.oracle401

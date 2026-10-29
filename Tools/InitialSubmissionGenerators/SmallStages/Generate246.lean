import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles246
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 246 InitECandidate.Proofs.WordStages.source246.2.1 InitECandidate.Proofs.WordStages.source246.2.2 InitECandidate.Proofs.SmallStages.Oracles246.oracle246

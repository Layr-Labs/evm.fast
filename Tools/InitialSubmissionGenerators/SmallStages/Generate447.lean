import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles447
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 447 InitECandidate.Proofs.WordStages.source447.2.1 InitECandidate.Proofs.WordStages.source447.2.2 InitECandidate.Proofs.SmallStages.Oracles447.oracle447

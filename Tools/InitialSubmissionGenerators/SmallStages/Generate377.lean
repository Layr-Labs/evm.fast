import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles377
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 377 InitECandidate.Proofs.WordStages.source377.2.1 InitECandidate.Proofs.WordStages.source377.2.2 InitECandidate.Proofs.SmallStages.Oracles377.oracle377

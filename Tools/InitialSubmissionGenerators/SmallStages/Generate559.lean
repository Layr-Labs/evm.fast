import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles559
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 559 InitECandidate.Proofs.WordStages.source559.2.1 InitECandidate.Proofs.WordStages.source559.2.2 InitECandidate.Proofs.SmallStages.Oracles559.oracle559

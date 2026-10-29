import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles429
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 429 InitECandidate.Proofs.WordStages.source429.2.1 InitECandidate.Proofs.WordStages.source429.2.2 InitECandidate.Proofs.SmallStages.Oracles429.oracle429

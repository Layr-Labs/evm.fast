import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles431
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 431 InitECandidate.Proofs.WordStages.source431.2.1 InitECandidate.Proofs.WordStages.source431.2.2 InitECandidate.Proofs.SmallStages.Oracles431.oracle431

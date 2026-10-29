import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles472
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 472 InitECandidate.Proofs.WordStages.source472.2.1 InitECandidate.Proofs.WordStages.source472.2.2 InitECandidate.Proofs.SmallStages.Oracles472.oracle472

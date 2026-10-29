import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles571
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 571 InitECandidate.Proofs.WordStages.source571.2.1 InitECandidate.Proofs.WordStages.source571.2.2 InitECandidate.Proofs.SmallStages.Oracles571.oracle571

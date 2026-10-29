import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles554
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 554 InitECandidate.Proofs.WordStages.source554.2.1 InitECandidate.Proofs.WordStages.source554.2.2 InitECandidate.Proofs.SmallStages.Oracles554.oracle554

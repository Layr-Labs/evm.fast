import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles448
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 448 InitECandidate.Proofs.WordStages.source448.2.1 InitECandidate.Proofs.WordStages.source448.2.2 InitECandidate.Proofs.SmallStages.Oracles448.oracle448

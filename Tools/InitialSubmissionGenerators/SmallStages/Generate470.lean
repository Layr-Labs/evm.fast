import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles470
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 470 InitECandidate.Proofs.WordStages.source470.2.1 InitECandidate.Proofs.WordStages.source470.2.2 InitECandidate.Proofs.SmallStages.Oracles470.oracle470

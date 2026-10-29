import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles550
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 550 InitECandidate.Proofs.WordStages.source550.2.1 InitECandidate.Proofs.WordStages.source550.2.2 InitECandidate.Proofs.SmallStages.Oracles550.oracle550

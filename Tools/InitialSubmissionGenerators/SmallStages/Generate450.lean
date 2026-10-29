import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles450
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 450 InitECandidate.Proofs.WordStages.source450.2.1 InitECandidate.Proofs.WordStages.source450.2.2 InitECandidate.Proofs.SmallStages.Oracles450.oracle450

import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles587
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 587 InitECandidate.Proofs.WordStages.source587.2.1 InitECandidate.Proofs.WordStages.source587.2.2 InitECandidate.Proofs.SmallStages.Oracles587.oracle587

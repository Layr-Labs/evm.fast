import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles883
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 883 InitECandidate.Proofs.WordStages.source883.2.1 InitECandidate.Proofs.WordStages.source883.2.2 InitECandidate.Proofs.SmallStages.Oracles883.oracle883

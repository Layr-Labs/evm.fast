import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles262
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 262 InitECandidate.Proofs.WordStages.source262.2.1 InitECandidate.Proofs.WordStages.source262.2.2 InitECandidate.Proofs.SmallStages.Oracles262.oracle262

import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles860
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 860 InitECandidate.Proofs.WordStages.source860.2.1 InitECandidate.Proofs.WordStages.source860.2.2 InitECandidate.Proofs.SmallStages.Oracles860.oracle860

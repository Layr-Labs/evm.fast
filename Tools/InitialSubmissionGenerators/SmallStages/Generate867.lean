import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles867
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 867 InitECandidate.Proofs.WordStages.source867.2.1 InitECandidate.Proofs.WordStages.source867.2.2 InitECandidate.Proofs.SmallStages.Oracles867.oracle867

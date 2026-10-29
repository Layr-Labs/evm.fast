import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles876
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 876 InitECandidate.Proofs.WordStages.source876.2.1 InitECandidate.Proofs.WordStages.source876.2.2 InitECandidate.Proofs.SmallStages.Oracles876.oracle876

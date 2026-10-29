import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles845
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 845 InitECandidate.Proofs.WordStages.source845.2.1 InitECandidate.Proofs.WordStages.source845.2.2 InitECandidate.Proofs.SmallStages.Oracles845.oracle845

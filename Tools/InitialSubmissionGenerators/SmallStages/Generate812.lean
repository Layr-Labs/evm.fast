import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles812
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 812 InitECandidate.Proofs.WordStages.source812.2.1 InitECandidate.Proofs.WordStages.source812.2.2 InitECandidate.Proofs.SmallStages.Oracles812.oracle812

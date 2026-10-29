import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles878
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 878 InitECandidate.Proofs.WordStages.source878.2.1 InitECandidate.Proofs.WordStages.source878.2.2 InitECandidate.Proofs.SmallStages.Oracles878.oracle878

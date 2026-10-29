import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles872
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 872 InitECandidate.Proofs.WordStages.source872.2.1 InitECandidate.Proofs.WordStages.source872.2.2 InitECandidate.Proofs.SmallStages.Oracles872.oracle872

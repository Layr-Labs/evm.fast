import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles844
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 844 InitECandidate.Proofs.WordStages.source844.2.1 InitECandidate.Proofs.WordStages.source844.2.2 InitECandidate.Proofs.SmallStages.Oracles844.oracle844

import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles620
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 620 InitECandidate.Proofs.WordStages.source620.2.1 InitECandidate.Proofs.WordStages.source620.2.2 InitECandidate.Proofs.SmallStages.Oracles620.oracle620

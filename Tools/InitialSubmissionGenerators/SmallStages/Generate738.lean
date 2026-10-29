import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles738
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 738 InitECandidate.Proofs.WordStages.source738.2.1 InitECandidate.Proofs.WordStages.source738.2.2 InitECandidate.Proofs.SmallStages.Oracles738.oracle738

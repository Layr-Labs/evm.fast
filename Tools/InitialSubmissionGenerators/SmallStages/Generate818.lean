import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles818
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 818 InitECandidate.Proofs.WordStages.source818.2.1 InitECandidate.Proofs.WordStages.source818.2.2 InitECandidate.Proofs.SmallStages.Oracles818.oracle818

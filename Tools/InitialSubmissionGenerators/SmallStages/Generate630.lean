import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles630
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 630 InitECandidate.Proofs.WordStages.source630.2.1 InitECandidate.Proofs.WordStages.source630.2.2 InitECandidate.Proofs.SmallStages.Oracles630.oracle630

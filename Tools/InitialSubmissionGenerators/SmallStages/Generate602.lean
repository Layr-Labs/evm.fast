import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles602
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 602 InitECandidate.Proofs.WordStages.source602.2.1 InitECandidate.Proofs.WordStages.source602.2.2 InitECandidate.Proofs.SmallStages.Oracles602.oracle602

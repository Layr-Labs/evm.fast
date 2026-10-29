import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles591
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 591 InitECandidate.Proofs.WordStages.source591.2.1 InitECandidate.Proofs.WordStages.source591.2.2 InitECandidate.Proofs.SmallStages.Oracles591.oracle591

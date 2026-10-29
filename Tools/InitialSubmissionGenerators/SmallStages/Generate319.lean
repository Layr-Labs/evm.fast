import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles319
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 319 InitECandidate.Proofs.WordStages.source319.2.1 InitECandidate.Proofs.WordStages.source319.2.2 InitECandidate.Proofs.SmallStages.Oracles319.oracle319

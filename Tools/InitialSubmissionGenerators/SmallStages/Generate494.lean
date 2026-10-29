import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles494
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 494 InitECandidate.Proofs.WordStages.source494.2.1 InitECandidate.Proofs.WordStages.source494.2.2 InitECandidate.Proofs.SmallStages.Oracles494.oracle494

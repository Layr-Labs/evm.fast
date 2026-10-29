import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles488
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 488 InitECandidate.Proofs.WordStages.source488.2.1 InitECandidate.Proofs.WordStages.source488.2.2 InitECandidate.Proofs.SmallStages.Oracles488.oracle488

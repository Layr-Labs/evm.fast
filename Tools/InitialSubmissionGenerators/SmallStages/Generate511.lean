import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles511
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 511 InitECandidate.Proofs.WordStages.source511.2.1 InitECandidate.Proofs.WordStages.source511.2.2 InitECandidate.Proofs.SmallStages.Oracles511.oracle511

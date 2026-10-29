import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles358
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 358 InitECandidate.Proofs.WordStages.source358.2.1 InitECandidate.Proofs.WordStages.source358.2.2 InitECandidate.Proofs.SmallStages.Oracles358.oracle358

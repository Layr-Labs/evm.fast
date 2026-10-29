import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles467
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 467 InitECandidate.Proofs.WordStages.source467.2.1 InitECandidate.Proofs.WordStages.source467.2.2 InitECandidate.Proofs.SmallStages.Oracles467.oracle467

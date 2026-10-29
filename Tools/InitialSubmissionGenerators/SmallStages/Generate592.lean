import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles592
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 592 InitECandidate.Proofs.WordStages.source592.2.1 InitECandidate.Proofs.WordStages.source592.2.2 InitECandidate.Proofs.SmallStages.Oracles592.oracle592

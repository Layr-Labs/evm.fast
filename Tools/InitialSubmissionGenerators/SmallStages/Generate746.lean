import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles746
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 746 InitECandidate.Proofs.WordStages.source746.2.1 InitECandidate.Proofs.WordStages.source746.2.2 InitECandidate.Proofs.SmallStages.Oracles746.oracle746

import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles702
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 702 InitECandidate.Proofs.WordStages.source702.2.1 InitECandidate.Proofs.WordStages.source702.2.2 InitECandidate.Proofs.SmallStages.Oracles702.oracle702

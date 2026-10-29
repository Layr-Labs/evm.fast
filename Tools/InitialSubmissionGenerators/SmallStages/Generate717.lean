import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles717
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 717 InitECandidate.Proofs.WordStages.source717.2.1 InitECandidate.Proofs.WordStages.source717.2.2 InitECandidate.Proofs.SmallStages.Oracles717.oracle717

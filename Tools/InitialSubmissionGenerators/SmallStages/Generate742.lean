import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles742
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 742 InitECandidate.Proofs.WordStages.source742.2.1 InitECandidate.Proofs.WordStages.source742.2.2 InitECandidate.Proofs.SmallStages.Oracles742.oracle742

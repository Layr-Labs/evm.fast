import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles748
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 748 InitECandidate.Proofs.WordStages.source748.2.1 InitECandidate.Proofs.WordStages.source748.2.2 InitECandidate.Proofs.SmallStages.Oracles748.oracle748

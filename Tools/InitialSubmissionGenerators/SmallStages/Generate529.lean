import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles529
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 529 InitECandidate.Proofs.WordStages.source529.2.1 InitECandidate.Proofs.WordStages.source529.2.2 InitECandidate.Proofs.SmallStages.Oracles529.oracle529

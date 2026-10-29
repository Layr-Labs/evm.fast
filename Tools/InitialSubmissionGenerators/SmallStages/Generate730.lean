import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles730
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 730 InitECandidate.Proofs.WordStages.source730.2.1 InitECandidate.Proofs.WordStages.source730.2.2 InitECandidate.Proofs.SmallStages.Oracles730.oracle730

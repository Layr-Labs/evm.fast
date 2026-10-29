import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles515
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 515 InitECandidate.Proofs.WordStages.source515.2.1 InitECandidate.Proofs.WordStages.source515.2.2 InitECandidate.Proofs.SmallStages.Oracles515.oracle515

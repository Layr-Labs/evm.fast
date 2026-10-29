import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles527
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 527 InitECandidate.Proofs.WordStages.source527.2.1 InitECandidate.Proofs.WordStages.source527.2.2 InitECandidate.Proofs.SmallStages.Oracles527.oracle527

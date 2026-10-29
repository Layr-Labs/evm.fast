import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles495
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 495 InitECandidate.Proofs.WordStages.source495.2.1 InitECandidate.Proofs.WordStages.source495.2.2 InitECandidate.Proofs.SmallStages.Oracles495.oracle495

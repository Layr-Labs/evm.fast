import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles415
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 415 InitECandidate.Proofs.WordStages.source415.2.1 InitECandidate.Proofs.WordStages.source415.2.2 InitECandidate.Proofs.SmallStages.Oracles415.oracle415

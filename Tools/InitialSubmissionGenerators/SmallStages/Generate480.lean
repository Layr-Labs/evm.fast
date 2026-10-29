import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles480
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 480 InitECandidate.Proofs.WordStages.source480.2.1 InitECandidate.Proofs.WordStages.source480.2.2 InitECandidate.Proofs.SmallStages.Oracles480.oracle480

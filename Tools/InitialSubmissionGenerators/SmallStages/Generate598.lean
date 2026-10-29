import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles598
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 598 InitECandidate.Proofs.WordStages.source598.2.1 InitECandidate.Proofs.WordStages.source598.2.2 InitECandidate.Proofs.SmallStages.Oracles598.oracle598

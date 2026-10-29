import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles417
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 417 InitECandidate.Proofs.WordStages.source417.2.1 InitECandidate.Proofs.WordStages.source417.2.2 InitECandidate.Proofs.SmallStages.Oracles417.oracle417

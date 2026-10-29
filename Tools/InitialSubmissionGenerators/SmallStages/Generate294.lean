import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles294
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 294 InitECandidate.Proofs.WordStages.source294.2.1 InitECandidate.Proofs.WordStages.source294.2.2 InitECandidate.Proofs.SmallStages.Oracles294.oracle294

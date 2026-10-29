import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles313
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 313 InitECandidate.Proofs.WordStages.source313.2.1 InitECandidate.Proofs.WordStages.source313.2.2 InitECandidate.Proofs.SmallStages.Oracles313.oracle313

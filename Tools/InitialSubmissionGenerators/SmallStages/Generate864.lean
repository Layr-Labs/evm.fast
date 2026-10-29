import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles864
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 864 InitECandidate.Proofs.WordStages.source864.2.1 InitECandidate.Proofs.WordStages.source864.2.2 InitECandidate.Proofs.SmallStages.Oracles864.oracle864

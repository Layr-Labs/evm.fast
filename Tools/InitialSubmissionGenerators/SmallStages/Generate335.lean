import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles335
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 335 InitECandidate.Proofs.WordStages.source335.2.1 InitECandidate.Proofs.WordStages.source335.2.2 InitECandidate.Proofs.SmallStages.Oracles335.oracle335

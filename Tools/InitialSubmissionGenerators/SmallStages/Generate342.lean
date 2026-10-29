import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles342
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 342 InitECandidate.Proofs.WordStages.source342.2.1 InitECandidate.Proofs.WordStages.source342.2.2 InitECandidate.Proofs.SmallStages.Oracles342.oracle342

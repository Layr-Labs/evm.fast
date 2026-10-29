import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles552
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 552 InitECandidate.Proofs.WordStages.source552.2.1 InitECandidate.Proofs.WordStages.source552.2.2 InitECandidate.Proofs.SmallStages.Oracles552.oracle552

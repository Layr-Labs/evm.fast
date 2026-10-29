import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles402
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 402 InitECandidate.Proofs.WordStages.source402.2.1 InitECandidate.Proofs.WordStages.source402.2.2 InitECandidate.Proofs.SmallStages.Oracles402.oracle402

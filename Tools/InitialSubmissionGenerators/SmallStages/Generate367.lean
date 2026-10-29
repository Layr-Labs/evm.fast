import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles367
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 367 InitECandidate.Proofs.WordStages.source367.2.1 InitECandidate.Proofs.WordStages.source367.2.2 InitECandidate.Proofs.SmallStages.Oracles367.oracle367

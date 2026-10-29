import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles390
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 390 InitECandidate.Proofs.WordStages.source390.2.1 InitECandidate.Proofs.WordStages.source390.2.2 InitECandidate.Proofs.SmallStages.Oracles390.oracle390

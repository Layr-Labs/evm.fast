import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles568
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 568 InitECandidate.Proofs.WordStages.source568.2.1 InitECandidate.Proofs.WordStages.source568.2.2 InitECandidate.Proofs.SmallStages.Oracles568.oracle568

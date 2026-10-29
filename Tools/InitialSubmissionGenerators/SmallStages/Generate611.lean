import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles611
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 611 InitECandidate.Proofs.WordStages.source611.2.1 InitECandidate.Proofs.WordStages.source611.2.2 InitECandidate.Proofs.SmallStages.Oracles611.oracle611

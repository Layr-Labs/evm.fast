import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles794
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 794 InitECandidate.Proofs.WordStages.source794.2.1 InitECandidate.Proofs.WordStages.source794.2.2 InitECandidate.Proofs.SmallStages.Oracles794.oracle794

import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles631
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 631 InitECandidate.Proofs.WordStages.source631.2.1 InitECandidate.Proofs.WordStages.source631.2.2 InitECandidate.Proofs.SmallStages.Oracles631.oracle631

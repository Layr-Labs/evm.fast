import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles626
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 626 InitECandidate.Proofs.WordStages.source626.2.1 InitECandidate.Proofs.WordStages.source626.2.2 InitECandidate.Proofs.SmallStages.Oracles626.oracle626

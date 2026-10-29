import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles444
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 444 InitECandidate.Proofs.WordStages.source444.2.1 InitECandidate.Proofs.WordStages.source444.2.2 InitECandidate.Proofs.SmallStages.Oracles444.oracle444

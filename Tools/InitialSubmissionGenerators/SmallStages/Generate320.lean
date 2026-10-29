import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles320
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 320 InitECandidate.Proofs.WordStages.source320.2.1 InitECandidate.Proofs.WordStages.source320.2.2 InitECandidate.Proofs.SmallStages.Oracles320.oracle320

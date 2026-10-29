import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles560
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 560 InitECandidate.Proofs.WordStages.source560.2.1 InitECandidate.Proofs.WordStages.source560.2.2 InitECandidate.Proofs.SmallStages.Oracles560.oracle560

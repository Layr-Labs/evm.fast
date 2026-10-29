import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles675
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 675 InitECandidate.Proofs.WordStages.source675.2.1 InitECandidate.Proofs.WordStages.source675.2.2 InitECandidate.Proofs.SmallStages.Oracles675.oracle675

import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles595
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 595 InitECandidate.Proofs.WordStages.source595.2.1 InitECandidate.Proofs.WordStages.source595.2.2 InitECandidate.Proofs.SmallStages.Oracles595.oracle595

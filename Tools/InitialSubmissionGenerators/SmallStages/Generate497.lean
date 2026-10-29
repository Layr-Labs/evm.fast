import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles497
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 497 InitECandidate.Proofs.WordStages.source497.2.1 InitECandidate.Proofs.WordStages.source497.2.2 InitECandidate.Proofs.SmallStages.Oracles497.oracle497

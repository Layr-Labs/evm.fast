import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles489
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 489 InitECandidate.Proofs.WordStages.source489.2.1 InitECandidate.Proofs.WordStages.source489.2.2 InitECandidate.Proofs.SmallStages.Oracles489.oracle489

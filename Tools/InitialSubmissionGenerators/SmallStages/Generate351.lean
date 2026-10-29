import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles351
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 351 InitECandidate.Proofs.WordStages.source351.2.1 InitECandidate.Proofs.WordStages.source351.2.2 InitECandidate.Proofs.SmallStages.Oracles351.oracle351

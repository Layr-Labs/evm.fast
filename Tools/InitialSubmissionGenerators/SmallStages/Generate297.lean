import Tools.GenSmallStages
import InitECandidate.Proofs.SmallStages.Oracles297
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 297 InitECandidate.Proofs.WordStages.source297.2.1 InitECandidate.Proofs.WordStages.source297.2.2 InitECandidate.Proofs.SmallStages.Oracles297.oracle297
